import 'dart:io';
import 'package:test/test.dart';
import 'package:graphtracks_client/graphtracks_client.dart';
import 'package:dio/dio.dart';

void main() {
  group('GraphTracks API Integration Tests', () {
    late GraphtracksClient api;
    late BlueSkyAnalyticsApi analyticsApi;
    late String apiKey;
    late String testDid;

    setUpAll(() {
      apiKey = Platform.environment['GRAPHTRACKS_API_KEY'] ?? '';
      testDid = Platform.environment['TEST_DID'] ?? 'did:plc:example123';

      if (apiKey.isEmpty) {
        throw Exception('GRAPHTRACKS_API_KEY environment variable is required');
      }

      api = GraphtracksClient();
      api.dio.options.connectTimeout = Duration(seconds: 30);
      api.dio.options.receiveTimeout = Duration(seconds: 30);
      api.setApiKey('apiKeyAuth', apiKey);
      analyticsApi = api.getBlueSkyAnalyticsApi();
    });

    test('should fetch followers stats successfully', () async {
      final now = DateTime.now().toUtc();
      final fromDate = now.subtract(Duration(days: 30));

      final response = await analyticsApi.getGlobalStatsForAccountAPI(
        network: Network.blueSky,
        accountId: testDid,
        metric: Metric.followers,
        from: fromDate,
        timeframe: Timeframe.n30d,
        bucket: (3600 * 24).toString(),
      );

      expect(response.data, isNotNull);
      expect(response.data, isA<Iterable<DataPoint>>());

      if (response.data!.isNotEmpty) {
        final firstDataPoint = response.data!.first;
        expect(firstDataPoint.time, isNotNull);
        expect(firstDataPoint.value, isNotNull);
        expect(firstDataPoint.value, isA<num>());
        expect(response.data!.any((point) => point.value != 0), isTrue);
      }
    });

    test('should fetch likes stats successfully', () async {
      final now = DateTime.now().toUtc();
      final fromDate = now.subtract(Duration(days: 7));

      final response = await analyticsApi.getGlobalStatsForAccountAPI(
        network: Network.blueSky,
        accountId: testDid,
        metric: Metric.likes,
        from: fromDate,
        timeframe: Timeframe.n7d,
        bucket: (3600 * 12).toString(),
      );

      expect(response.data, isNotNull);
      expect(response.data, isA<Iterable<DataPoint>>());

      if (response.data!.isNotEmpty) {
        final firstDataPoint = response.data!.first;
        expect(firstDataPoint.time, isNotNull);
        expect(firstDataPoint.value, isNotNull);
        expect(firstDataPoint.value, isA<num>());
        expect(response.data!.any((point) => point.value != 0), isTrue);
      }
    });

    test('should fetch replies stats successfully', () async {
      final now = DateTime.now().toUtc();
      final fromDate = now.subtract(Duration(days: 1));

      final response = await analyticsApi.getGlobalStatsForAccountAPI(
        network: Network.blueSky,
        accountId: testDid,
        metric: Metric.replies,
        from: fromDate,
        timeframe: Timeframe.n1d,
        bucket: (3600 * 6).toString(),
      );

      expect(response.data, isNotNull);
      expect(response.data, isA<Iterable<DataPoint>>());

      if (response.data!.isNotEmpty) {
        final firstDataPoint = response.data!.first;
        expect(firstDataPoint.time, isNotNull);
        expect(firstDataPoint.value, isNotNull);
        expect(firstDataPoint.value, isA<num>());
        expect(response.data!.any((point) => point.value != 0), isTrue);
      }
    });

    test('should fetch reposts stats successfully', () async {
      final now = DateTime.now().toUtc();
      final fromDate = now.subtract(Duration(days: 1));

      final response = await analyticsApi.getGlobalStatsForAccountAPI(
        network: Network.blueSky,
        accountId: testDid,
        metric: Metric.reposts,
        from: fromDate,
        timeframe: Timeframe.n1d,
        bucket: (3600 * 6).toString(),
      );

      expect(response.data, isNotNull);
      expect(response.data, isA<Iterable<DataPoint>>());

      if (response.data!.isNotEmpty) {
        final firstDataPoint = response.data!.first;
        expect(firstDataPoint.time, isNotNull);
        expect(firstDataPoint.value, isNotNull);
        expect(firstDataPoint.value, isA<num>());
        expect(response.data!.any((point) => point.value != 0), isTrue);
      }
    });

    test('should handle unauthorized access', () async {
      final unauthorizedApi = GraphtracksClient();
      unauthorizedApi.setApiKey('apiKeyAuth', 'invalid_key');
      final unauthorizedAnalyticsApi = unauthorizedApi.getBlueSkyAnalyticsApi();

      final now = DateTime.now().toUtc();
      final fromDate = now.subtract(Duration(days: 1));

      expect(
        () async => await unauthorizedAnalyticsApi.getGlobalStatsForAccountAPI(
          network: Network.blueSky,
          accountId: testDid,
          metric: Metric.followers,
          from: fromDate,
          timeframe: Timeframe.n1d,
        ),
        throwsA(isA<DioException>()),
      );
    });

    test('should handle invalid account ID', () async {
      final now = DateTime.now().toUtc();
      final fromDate = now.subtract(Duration(days: 1));

      expect(
        () async => await analyticsApi.getGlobalStatsForAccountAPI(
          network: Network.blueSky,
          accountId: 'invalid_did',
          metric: Metric.followers,
          from: fromDate,
          timeframe: Timeframe.n1d,
        ),
        throwsA(isA<DioException>()),
      );
    });
  });
}

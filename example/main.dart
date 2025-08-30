import 'dart:io';
import 'package:graphtracks_client/graphtracks_client.dart';
import 'package:dio/dio.dart';

Future<void> main(List<String> args) async {
  // Check if DID argument is provided
  if (args.isEmpty) {
    print('Usage: dart run example/main.dart <did>');
    print('Example: dart run example/main.dart did:plc:example123');
    exit(1);
  }

  final did = args[0];

  // Get API key from environment variable
  final apiKey = Platform.environment['GRAPHTRACKS_API_KEY'];
  if (apiKey == null || apiKey.isEmpty) {
    print('Error: GRAPHTRACKS_API_KEY environment variable is required');
    exit(1);
  }

  final apiUrl = Platform.environment['GRAPHTRACKS_API_URL'];

  // Initialize API client
  final api = GraphtracksClient(basePathOverride: apiUrl);
  api.dio.options.connectTimeout = Duration(seconds: 60);
  api.dio.options.receiveTimeout = Duration(seconds: 60);
  api.setApiKey('apiKeyAuth', apiKey);

  final analyticsApi = api.getBlueSkyAnalyticsApi();

  try {
    // Calculate a recent date range (last 7 days from now)
    final now = DateTime.now().toUtc();
    final fromDate = now.subtract(Duration(days: 30));

    print(
        'Fetching data from ${fromDate.toIso8601String()} to ${now.toIso8601String()}');

    // Get followers stats for a given account
    final response = await analyticsApi.getGlobalStatsForAccount(
      network: Network.blueSky, // Only BlueSky is supported
      accountId: did, // atproto account did
      metric: Metric.followers, // Metric to query
      from: fromDate, // Start date in UTC - last 7 days
      // to: now, // End date in UTC - now
      timeframe: Timeframe.n30d,
      bucket: 3600 *
          24, // Interval between datapoints. Keep datapoints count low for UX and performance
    );

    print('Response data: ${response.data}');
    if (response.data != null) {
      for (final stat in response.data!) {
        print('  Timestamp: ${stat.time}, Value: ${stat.value}');
      }
    } else {
      print('No data received');
    }
  } on DioException catch (e) {
    print(e);
    print('API Error:');
    print('  Status Code: ${e.response?.statusCode}');
    print('  Status Message: ${e.response?.statusMessage}');
    if (e.response?.data != null) {
      print('  Response: ${e.response?.data}');
    }
    print('  Error Type: ${e.type}');

    // Provide helpful suggestions based on the error
    if (e.response?.statusCode == 403) {
      print(
          '\nSuggestion: Check if your API key is valid and has the necessary permissions.');
    } else if (e.response?.statusCode == 404) {
      print(
          '\nSuggestion: The account DID might not exist or might not be supported.');
    } else if (e.response?.statusCode == 500) {
      print(
          '\nSuggestion: Server error. Try a different date range or check if the service is operational.');
    }

    exit(1);
  } catch (e) {
    print('Unexpected error: $e');
    exit(1);
  }
}

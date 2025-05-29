import 'package:test/test.dart';
import 'package:graphtracks_client/graphtracks_client.dart';

/// tests for BlueSkyAnalyticsApi
void main() {
  final instance = GraphtracksClient().getBlueSkyAnalyticsApi();

  group(BlueSkyAnalyticsApi, () {
    // Growth rate statistics for account
    //
    // Get growth rate statistics for account. Timeframe, from or to must be provided.
    //
    //Future<BuiltList<DataPoint>> getGlobalStatsForAccountAPI(Network network, String accountId, Metric metric, DateTime from, { Timeframe timeframe, DateTime to, String bucket }) async
    test('test getGlobalStatsForAccountAPI', () async {
      // TODO
    });
  });
}

import 'package:test/test.dart';
import 'package:graphtracks_client/graphtracks_client.dart';

/// tests for BlueSkyAnalyticsApi
void main() {
  final instance = GraphtracksClient().getBlueSkyAnalyticsApi();

  group(BlueSkyAnalyticsApi, () {
    // Create a network account
    //
    // Create a network account for the authenticated user.
    //
    //Future<NetworkAccount> createNetworkAccount(CreateNetworkAccountRequest createNetworkAccountRequest) async
    test('test createNetworkAccount', () async {
      // TODO
    });

    // Delete a network account
    //
    // Delete a network account from your GraphTracks account.
    //
    //Future<DeleteNetworkAccount201Response> deleteNetworkAccount(String accountId) async
    test('test deleteNetworkAccount', () async {
      // TODO
    });

    // Growth rate statistics for account
    //
    // Get growth rate statistics for account. Timeframe, from or to must be provided.
    //
    //Future<BuiltList<DataPoint>> getGlobalStatsForAccount(Network network, String accountId, Metric metric, { Timeframe timeframe, DateTime from, DateTime to, int bucket }) async
    test('test getGlobalStatsForAccount', () async {
      // TODO
    });

    // Get a network account
    //
    // Get details for a specific network account.
    //
    //Future<NetworkAccount> getNetworkAccount(String accountId) async
    test('test getNetworkAccount', () async {
      // TODO
    });

    // Get network accounts for current user
    //
    // Get all network accounts associated with the authenticated user.
    //
    //Future<BuiltList<NetworkAccount>> getNetworkAccounts() async
    test('test getNetworkAccounts', () async {
      // TODO
    });

    // Get post interactions
    //
    // Get detailed interaction data for a specific post, including user profiles who interacted.
    //
    //Future<BuiltList<Interaction>> getPostInteractions(Network network, String accountId, String postId, Metric metric, Timeframe timeframe, DateTime from, { DateTime to, int limit, int offset, String sort }) async
    test('test getPostInteractions', () async {
      // TODO
    });

    // Get post statistics
    //
    // Get time series statistics for a specific post. Requires metric, timeframe, and from parameters.
    //
    //Future<BuiltList<DataPoint>> getPostStats(Network network, String accountId, String postId, Metric metric, Timeframe timeframe, DateTime from, { int bucket }) async
    test('test getPostStats', () async {
      // TODO
    });

    // Get top posts for an account
    //
    // Get the top performing posts for an account within a specified timeframe.
    //
    //Future<BuiltList<PostsInner>> getTopPostsForAccount(Network network, String accountId, { Timeframe timeframe, int limit }) async
    test('test getTopPostsForAccount', () async {
      // TODO
    });
  });
}

# graphtracks_client.api.BlueSkyAnalyticsApi

## Load the API package
```dart
import 'package:graphtracks_client/api.dart';
```

All URIs are relative to *https://api.graphtracks.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNetworkAccount**](BlueSkyAnalyticsApi.md#createnetworkaccount) | **POST** /v1/api/networks/account | Create a network account
[**deleteNetworkAccount**](BlueSkyAnalyticsApi.md#deletenetworkaccount) | **DELETE** /v1/api/networks/accounts/{account_id} | Delete a network account
[**getGlobalStatsForAccount**](BlueSkyAnalyticsApi.md#getglobalstatsforaccount) | **GET** /v1/api/networks/{network}/accounts/{account_id}/stats/{metric} | Growth rate statistics for account
[**getNetworkAccount**](BlueSkyAnalyticsApi.md#getnetworkaccount) | **GET** /v1/api/networks/accounts/{account_id} | Get a network account
[**getNetworkAccounts**](BlueSkyAnalyticsApi.md#getnetworkaccounts) | **GET** /v1/api/networks/accounts | Get network accounts for current user
[**getPostInteractions**](BlueSkyAnalyticsApi.md#getpostinteractions) | **GET** /v1/api/networks/{network}/accounts/{account_id}/posts/{post_id}/interactions/{metric} | Get post interactions
[**getPostStats**](BlueSkyAnalyticsApi.md#getpoststats) | **GET** /v1/api/networks/{network}/accounts/{account_id}/posts/{post_id}/stats | Get post statistics
[**getTopPostsForAccount**](BlueSkyAnalyticsApi.md#gettoppostsforaccount) | **GET** /v1/api/networks/{network}/accounts/{account_id}/top-posts | Get top posts for an account


# **createNetworkAccount**
> NetworkAccount createNetworkAccount(createNetworkAccountRequest)

Create a network account

Create a network account for the authenticated user.

### Example
```dart
import 'package:graphtracks_client/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = GraphtracksClient().getBlueSkyAnalyticsApi();
final CreateNetworkAccountRequest createNetworkAccountRequest = ; // CreateNetworkAccountRequest | 

try {
    final response = api.createNetworkAccount(createNetworkAccountRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BlueSkyAnalyticsApi->createNetworkAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createNetworkAccountRequest** | [**CreateNetworkAccountRequest**](CreateNetworkAccountRequest.md)|  | 

### Return type

[**NetworkAccount**](NetworkAccount.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteNetworkAccount**
> DeleteNetworkAccount201Response deleteNetworkAccount(accountId)

Delete a network account

Delete a network account from your GraphTracks account.

### Example
```dart
import 'package:graphtracks_client/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = GraphtracksClient().getBlueSkyAnalyticsApi();
final String accountId = did:plc:z72i7hdynmk6r22z27h6tvur; // String | The account id to get or delete. This is the did of the account for BlueSky.

try {
    final response = api.deleteNetworkAccount(accountId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BlueSkyAnalyticsApi->deleteNetworkAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| The account id to get or delete. This is the did of the account for BlueSky. | 

### Return type

[**DeleteNetworkAccount201Response**](DeleteNetworkAccount201Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGlobalStatsForAccount**
> BuiltList<DataPoint> getGlobalStatsForAccount(network, accountId, metric, timeframe, from, to, bucket)

Growth rate statistics for account

Get growth rate statistics for account. Timeframe, from or to must be provided.

### Example
```dart
import 'package:graphtracks_client/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = GraphtracksClient().getBlueSkyAnalyticsApi();
final Network network = ; // Network | The network to get stats for. Only BlueSky is supported right now.
final String accountId = accountId_example; // String | The account id to get stats for. This is the did of the account for BlueSky.
final Metric metric = ; // Metric | The metric to get stats for
final Timeframe timeframe = ; // Timeframe | The timeframe to get stats for. If to and from are not provided, will return now - Timeframe.
final DateTime from = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime to = 2013-10-20T19:20:30+01:00; // DateTime | The end date of the timeframe. If not provided, timeframe and from must be provided.
final int bucket = 3600; // int | bucket size. Interval in seconds between data points. Data points will be aggregated into this bucket size.

try {
    final response = api.getGlobalStatsForAccount(network, accountId, metric, timeframe, from, to, bucket);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BlueSkyAnalyticsApi->getGlobalStatsForAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | [**Network**](.md)| The network to get stats for. Only BlueSky is supported right now. | 
 **accountId** | **String**| The account id to get stats for. This is the did of the account for BlueSky. | 
 **metric** | [**Metric**](.md)| The metric to get stats for | 
 **timeframe** | [**Timeframe**](.md)| The timeframe to get stats for. If to and from are not provided, will return now - Timeframe. | [optional] 
 **from** | **DateTime**|  | [optional] 
 **to** | **DateTime**| The end date of the timeframe. If not provided, timeframe and from must be provided. | [optional] 
 **bucket** | **int**| bucket size. Interval in seconds between data points. Data points will be aggregated into this bucket size. | [optional] [default to 3600]

### Return type

[**BuiltList&lt;DataPoint&gt;**](DataPoint.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNetworkAccount**
> NetworkAccount getNetworkAccount(accountId)

Get a network account

Get details for a specific network account.

### Example
```dart
import 'package:graphtracks_client/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = GraphtracksClient().getBlueSkyAnalyticsApi();
final String accountId = did:plc:z72i7hdynmk6r22z27h6tvur; // String | The account id to get or delete. This is the did of the account for BlueSky.

try {
    final response = api.getNetworkAccount(accountId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BlueSkyAnalyticsApi->getNetworkAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| The account id to get or delete. This is the did of the account for BlueSky. | 

### Return type

[**NetworkAccount**](NetworkAccount.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNetworkAccounts**
> BuiltList<NetworkAccount> getNetworkAccounts()

Get network accounts for current user

Get all network accounts associated with the authenticated user.

### Example
```dart
import 'package:graphtracks_client/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = GraphtracksClient().getBlueSkyAnalyticsApi();

try {
    final response = api.getNetworkAccounts();
    print(response);
} catch on DioException (e) {
    print('Exception when calling BlueSkyAnalyticsApi->getNetworkAccounts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;NetworkAccount&gt;**](NetworkAccount.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPostInteractions**
> BuiltList<Interaction> getPostInteractions(network, accountId, postId, metric, timeframe, from, to, limit, offset, sort)

Get post interactions

Get detailed interaction data for a specific post, including user profiles who interacted.

### Example
```dart
import 'package:graphtracks_client/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = GraphtracksClient().getBlueSkyAnalyticsApi();
final Network network = ; // Network | The network to get stats for. Only BlueSky is supported right now.
final String accountId = accountId_example; // String | The account id that owns the post. This is the did of the account for BlueSky.
final String postId = postId_example; // String | The post id to get interactions for
final Metric metric = ; // Metric | The type of interaction to retrieve
final Timeframe timeframe = ; // Timeframe | The timeframe to get interactions for
final DateTime from = 2013-10-20T19:20:30+01:00; // DateTime | The start date of the timeframe
final DateTime to = 2013-10-20T19:20:30+01:00; // DateTime | The end date of the timeframe
final int limit = 10; // int | Maximum number of interactions to return
final int offset = 0; // int | Offset for pagination
final String sort = sort_example; // String | Sort order for interactions

try {
    final response = api.getPostInteractions(network, accountId, postId, metric, timeframe, from, to, limit, offset, sort);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BlueSkyAnalyticsApi->getPostInteractions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | [**Network**](.md)| The network to get stats for. Only BlueSky is supported right now. | 
 **accountId** | **String**| The account id that owns the post. This is the did of the account for BlueSky. | 
 **postId** | **String**| The post id to get interactions for | 
 **metric** | [**Metric**](.md)| The type of interaction to retrieve | 
 **timeframe** | [**Timeframe**](.md)| The timeframe to get interactions for | 
 **from** | **DateTime**| The start date of the timeframe | 
 **to** | **DateTime**| The end date of the timeframe | [optional] 
 **limit** | **int**| Maximum number of interactions to return | [optional] [default to 10]
 **offset** | **int**| Offset for pagination | [optional] 
 **sort** | **String**| Sort order for interactions | [optional] [default to 'desc']

### Return type

[**BuiltList&lt;Interaction&gt;**](Interaction.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPostStats**
> BuiltList<DataPoint> getPostStats(network, accountId, postId, metric, timeframe, from, bucket)

Get post statistics

Get time series statistics for a specific post. Requires metric, timeframe, and from parameters.

### Example
```dart
import 'package:graphtracks_client/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = GraphtracksClient().getBlueSkyAnalyticsApi();
final Network network = ; // Network | The network to get stats for. Only BlueSky is supported right now.
final String accountId = accountId_example; // String | The account id that owns the post. This is the did of the account for BlueSky.
final String postId = postId_example; // String | The post id to get stats for
final Metric metric = ; // Metric | The metric to get stats for
final Timeframe timeframe = ; // Timeframe | The timeframe to get stats for
final DateTime from = 2013-10-20T19:20:30+01:00; // DateTime | The start date of the timeframe
final int bucket = 3600; // int | Bucket size. Interval in seconds between data points. Data points will be aggregated into this bucket size.

try {
    final response = api.getPostStats(network, accountId, postId, metric, timeframe, from, bucket);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BlueSkyAnalyticsApi->getPostStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | [**Network**](.md)| The network to get stats for. Only BlueSky is supported right now. | 
 **accountId** | **String**| The account id that owns the post. This is the did of the account for BlueSky. | 
 **postId** | **String**| The post id to get stats for | 
 **metric** | [**Metric**](.md)| The metric to get stats for | 
 **timeframe** | [**Timeframe**](.md)| The timeframe to get stats for | 
 **from** | **DateTime**| The start date of the timeframe | 
 **bucket** | **int**| Bucket size. Interval in seconds between data points. Data points will be aggregated into this bucket size. | [optional] [default to 3600]

### Return type

[**BuiltList&lt;DataPoint&gt;**](DataPoint.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTopPostsForAccount**
> BuiltList<PostsInner> getTopPostsForAccount(network, accountId, timeframe, limit)

Get top posts for an account

Get the top performing posts for an account within a specified timeframe.

### Example
```dart
import 'package:graphtracks_client/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = GraphtracksClient().getBlueSkyAnalyticsApi();
final Network network = ; // Network | The network to get stats for. Only BlueSky is supported right now.
final String accountId = accountId_example; // String | The account id to get top posts for. This is the did of the account for BlueSky.
final Timeframe timeframe = ; // Timeframe | The timeframe to analyze for top posts
final int limit = 10; // int | Maximum number of top posts to return

try {
    final response = api.getTopPostsForAccount(network, accountId, timeframe, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BlueSkyAnalyticsApi->getTopPostsForAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | [**Network**](.md)| The network to get stats for. Only BlueSky is supported right now. | 
 **accountId** | **String**| The account id to get top posts for. This is the did of the account for BlueSky. | 
 **timeframe** | [**Timeframe**](.md)| The timeframe to analyze for top posts | [optional] 
 **limit** | **int**| Maximum number of top posts to return | [optional] [default to 10]

### Return type

[**BuiltList&lt;PostsInner&gt;**](PostsInner.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


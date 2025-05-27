# graphtracks_client.api.BlueSkyAnalyticsApi

## Load the API package
```dart
import 'package:graphtracks_client/api.dart';
```

All URIs are relative to *https://api.graphtracks.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGlobalStatsForAccountAPI**](BlueSkyAnalyticsApi.md#getglobalstatsforaccountapi) | **GET** /v1/api/networks/{network}/accounts/{account_id}/stats/{metric} | Growth rate statistics for account


# **getGlobalStatsForAccountAPI**
> BuiltList<DataPoint> getGlobalStatsForAccountAPI(network, accountId, metric, from, timeframe, to, bucket)

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
final Network network = ; // Network | The network to get stats for
final String accountId = accountId_example; // String | The account id to get stats for
final Metric metric = ; // Metric | The metric to get stats for
final DateTime from = 2013-10-20T19:20:30+01:00; // DateTime | The start date of the timeframe
final Timeframe timeframe = ; // Timeframe | The timeframe to get stats for
final DateTime to = 2013-10-20T19:20:30+01:00; // DateTime | The end date of the timeframe
final String bucket = 3600; // String | bucket size. Interval in seconds between data points. Data points will be aggregated into this bucket size.

try {
    final response = api.getGlobalStatsForAccountAPI(network, accountId, metric, from, timeframe, to, bucket);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BlueSkyAnalyticsApi->getGlobalStatsForAccountAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | [**Network**](.md)| The network to get stats for | 
 **accountId** | **String**| The account id to get stats for | 
 **metric** | [**Metric**](.md)| The metric to get stats for | 
 **from** | **DateTime**| The start date of the timeframe | 
 **timeframe** | [**Timeframe**](.md)| The timeframe to get stats for | [optional] 
 **to** | **DateTime**| The end date of the timeframe | [optional] 
 **bucket** | **String**| bucket size. Interval in seconds between data points. Data points will be aggregated into this bucket size. | [optional] 

### Return type

[**BuiltList&lt;DataPoint&gt;**](DataPoint.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


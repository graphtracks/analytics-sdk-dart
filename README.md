# graphtracks_client

**Dart SDK for Bluesky Social Media Analytics** - analytics client library that enables developers to access detailed Bluesky social network statistics, user engagement metrics, and growth analytics through the GraphTracks API.

This is work in progress. Please contact support@graphtracks.com to get the key or join our [Discord](https://discord.gg/6ghZTfhW9s)


## Features

* Get stats for a given account by DID 
* Stats are available for the following metrics:
    * Followers
    * Replies
    * Reposts
    * Likes
* More detailed metrics coming soon

## Requirements

* Dart 2.15.0+ or Flutter 2.8.0+
* Dio 5.0.0+ (https://pub.dev/packages/dio)

## Installation & Usage

### pub.dev
To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml
```yaml
dependencies:
  graphtracks_client: 1.0.0-dev.8
```

### Github
If you want to use this package from github include the following in pubspec.yaml
```yaml
dependencies:
  graphtracks_client:
    git:
      url: https://github.com/graphtracks/analytics-sdk-dart.git
      #ref: main
```

### Local development
To use the package from your local drive, please include the following in pubspec.yaml
```yaml
dependencies:
  graphtracks_client:
    path: /path/to/graphtracks_client
```
## Getting Started

### Getting API key

- Register on https://www.graphtracks.com
- For period of closed beta, contact support@graphtracks.com to get the key

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
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

  // Initialize API client
  final api = GraphtracksClient();
  api.dio.options.connectTimeout = Duration(seconds: 30);
  api.dio.options.receiveTimeout = Duration(seconds: 30);
  api.setApiKey('apiKeyAuth', apiKey );
  
  final analyticsApi = api.getBlueSkyAnalyticsApi();

  try {
    // Calculate a recent date range (last 7 days from now)
    final now = DateTime.now().toUtc();
    final fromDate = now.subtract(Duration(days: 30));
    
    print('Fetching data from ${fromDate.toIso8601String()} to ${now.toIso8601String()}');
    
    // Get followers stats for a given account
    final response = await analyticsApi.getGlobalStatsForAccount(
      network: Network.blueSky, // Only BlueSky is supported
      accountId: did, // atproto account did
      metric: Metric.followers, // Metric to query
      from: fromDate, // Start date in UTC - last 7 days
      // to: now, // End date in UTC - now
      timeframe: Timeframe.n30d,
      bucket: 3600 * 24, // Interval between datapoints. Keep datapoints count low for UX and performance
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
      print('\nSuggestion: Check if your API key is valid and has the necessary permissions.');
    } else if (e.response?.statusCode == 404) {
      print('\nSuggestion: The account DID might not exist or might not be supported.');
    } else if (e.response?.statusCode == 500) {
      print('\nSuggestion: Server error. Try a different date range or check if the service is operational.');
    }
    
    exit(1);
  } catch (e) {
    print('Unexpected error: $e');
    exit(1);
  }
}

```


## Documentation for API Endpoints

All URIs are relative to *https://api.graphtracks.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
[*BlueSkyAnalyticsApi*](doc/BlueSkyAnalyticsApi.md) | [**createNetworkAccount**](doc/BlueSkyAnalyticsApi.md#createnetworkaccount) | **POST** /v1/api/networks/account | Create a network account
[*BlueSkyAnalyticsApi*](doc/BlueSkyAnalyticsApi.md) | [**deleteNetworkAccount**](doc/BlueSkyAnalyticsApi.md#deletenetworkaccount) | **DELETE** /v1/api/networks/accounts/{account_id} | Delete a network account
[*BlueSkyAnalyticsApi*](doc/BlueSkyAnalyticsApi.md) | [**getGlobalStatsForAccount**](doc/BlueSkyAnalyticsApi.md#getglobalstatsforaccount) | **GET** /v1/api/networks/{network}/accounts/{account_id}/stats/{metric} | Growth rate statistics for account
[*BlueSkyAnalyticsApi*](doc/BlueSkyAnalyticsApi.md) | [**getNetworkAccount**](doc/BlueSkyAnalyticsApi.md#getnetworkaccount) | **GET** /v1/api/networks/accounts/{account_id} | Get a network account
[*BlueSkyAnalyticsApi*](doc/BlueSkyAnalyticsApi.md) | [**getNetworkAccounts**](doc/BlueSkyAnalyticsApi.md#getnetworkaccounts) | **GET** /v1/api/networks/accounts | Get network accounts for current user
[*BlueSkyAnalyticsApi*](doc/BlueSkyAnalyticsApi.md) | [**getPostInteractions**](doc/BlueSkyAnalyticsApi.md#getpostinteractions) | **GET** /v1/api/networks/{network}/accounts/{account_id}/posts/{post_id}/interactions/{metric} | Get post interactions
[*BlueSkyAnalyticsApi*](doc/BlueSkyAnalyticsApi.md) | [**getPostStats**](doc/BlueSkyAnalyticsApi.md#getpoststats) | **GET** /v1/api/networks/{network}/accounts/{account_id}/posts/{post_id}/stats | Get post statistics
[*BlueSkyAnalyticsApi*](doc/BlueSkyAnalyticsApi.md) | [**getTopPostsForAccount**](doc/BlueSkyAnalyticsApi.md#gettoppostsforaccount) | **GET** /v1/api/networks/{network}/accounts/{account_id}/top-posts | Get top posts for an account


## Documentation For Models

 - [CreateNetworkAccountRequest](doc/CreateNetworkAccountRequest.md)
 - [DataPoint](doc/DataPoint.md)
 - [DeleteNetworkAccount201Response](doc/DeleteNetworkAccount201Response.md)
 - [GetNetworkAccount404Response](doc/GetNetworkAccount404Response.md)
 - [Interaction](doc/Interaction.md)
 - [Metric](doc/Metric.md)
 - [Network](doc/Network.md)
 - [NetworkAccount](doc/NetworkAccount.md)
 - [Post](doc/Post.md)
 - [PostData](doc/PostData.md)
 - [PostsInner](doc/PostsInner.md)
 - [Timeframe](doc/Timeframe.md)


## Documentation For Authorization


Authentication schemes defined for the API:
### apiKeyAuth

- **Type**: API key
- **API key parameter name**: X-API-Key
- **Location**: HTTP header


## Remarks

> [!WARNING]
> This project, `analytics-sdk-dart`, is an independent, open-source software development kit designed to interact with Graphtracks API. It is not affiliated with, endorsed by, or sponsored by Bluesky PBC or any of its subsidiaries.
>
> "Bluesky" and related marks are trademarks of their respective owners. Use of these names is solely for descriptive purposes to indicate compatibility and does not imply any official endorsement.
>
> All trademarks and registered trademarks are the property of their respective owners.

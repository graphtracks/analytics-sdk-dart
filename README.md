# graphtracks_client

Graphtracks analytics sdk client for Dart allows get varios Bluesky Social analytics Statistics

This is work in progress. Please contact support@graphtracks.com to get the key


## Requirements

* Dart 2.15.0+ or Flutter 2.8.0+
* Dio 5.0.0+ (https://pub.dev/packages/dio)

## Installation & Usage

### pub.dev
To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml
```yaml
dependencies:
  graphtracks_client: 1.0.0-dev-1
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
    final response = await analyticsApi.getGlobalStatsForAccountAPI(
      network: Network.blueSky, // Only BlueSky is supported
      accountId: did, // atproto account did
      metric: Metric.followers, // Metric to query
      from: fromDate, // Start date in UTC - last 7 days
      // to: now, // End date in UTC - now
      timeframe: Timeframe.n30d,
      bucket: (3600 * 24).toString(), // Interval between datapoints. Keep datapoints count low for UX and performance
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

## Getting API key

* Register on https://www.graphtracks.com
* For period of closed beta, contact support@graphtracks.com to get the key

## Documentation for API Endpoints

All URIs are relative to *https://api.graphtracks.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
[*BlueSkyAnalyticsApi*](doc/BlueSkyAnalyticsApi.md) | [**getGlobalStatsForAccountAPI**](doc/BlueSkyAnalyticsApi.md#getglobalstatsforaccountapi) | **GET** /v1/api/networks/{network}/accounts/{account_id}/stats/{metric} | Growth rate statistics for account


## Documentation For Models

 - [DataPoint](doc/DataPoint.md)
 - [GetGlobalStatsForAccountAPI403Response](doc/GetGlobalStatsForAccountAPI403Response.md)
 - [Metric](doc/Metric.md)
 - [Network](doc/Network.md)
 - [Timeframe](doc/Timeframe.md)


## Documentation For Authorization


Authentication schemes defined for the API:
### apiKeyAuth

- **Type**: API key
- **API key parameter name**: X-API-Key
- **Location**: HTTP header


## Author

> [!WARNING]
> This project, `analytics-sdk`, is an independent, open-source software development kit designed to interact with Graphtracks API. It is not affiliated with, endorsed by, or sponsored by Bluesky PBC or any of its subsidiaries.
>
> "Bluesky" and related marks are trademarks of their respective owners. Use of these names is solely for descriptive purposes to indicate compatibility and does not imply any official endorsement.
>
> All trademarks and registered trademarks are the property of their respective owners.

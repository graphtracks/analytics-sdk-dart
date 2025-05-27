# GraphTracks Analytics API Example

This example demonstrates how to use the GraphTracks Analytics API Dart client to fetch account statistics.

## Prerequisites

1. **API Key**: Get your API key from GraphTracks and set it as an environment variable:
   ```bash
   export GRAPHTRACKS_API_KEY=your_api_key_here
   ```

2. **Dart SDK**: Ensure you have Dart 2.18.0+ installed.

3. **Dependencies**: Install the required dependencies:
   ```bash
   dart pub get
   ```

## Usage

Run the example script with a Bluesky account DID:

```bash
dart run example/main.dart <account_did>
```

### Example

```bash
# Set your API key
export GRAPHTRACKS_API_KEY=your_api_key_here

# Run the example with a Bluesky DID
dart run example/main.dart did:plc:example123
```

### Alternative: Using the Shell Script

For convenience, you can also use the provided shell script:

```bash
# Set your API key
export GRAPHTRACKS_API_KEY=your_api_key_here

# Run the shell script (from project root)
./example/run_example.sh did:plc:example123
```

The shell script provides additional validation and user-friendly error messages.

## What the Example Does

The example script:

1. **Validates Input**: Checks that a DID is provided as a command line argument
2. **Authentication**: Uses the `GRAPHTRACKS_API_KEY` environment variable for authentication
3. **API Call**: Fetches followers statistics for the specified account from BlueSky
4. **Data Display**: Prints the timestamp and follower count data points

## Configuration Options

You can modify the example to change:

- **Network**: Currently only `Network.blueSky` is supported
- **Metric**: Choose from `Metric.followers`, `Metric.likes`, `Metric.replies`, `Metric.reposts`
- **Timeframe**: Options include `Timeframe.n1h`, `Timeframe.n1d`, `Timeframe.n7d`, `Timeframe.n30d`, `Timeframe.n90d`, `Timeframe.all`
- **Date Range**: Set custom `from` and `to` dates (cannot use `timeframe` and `to` together)
- **Bucket Size**: Adjust the interval between data points (in seconds)

## Error Handling

The example includes error handling for:
- Missing command line arguments
- Missing API key environment variable
- API call failures

## Sample Output

```
Response data:
  Timestamp: 2025-05-01T00:00:00.000Z, Value: 1250
  Timestamp: 2025-05-02T00:00:00.000Z, Value: 1255
  Timestamp: 2025-05-03T00:00:00.000Z, Value: 1262
  ...
``` 
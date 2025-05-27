#!/bin/bash

# GraphTracks Analytics API Dart Example Runner

set -e

# Check if API key is set
if [ -z "$GRAPHTRACKS_API_KEY" ]; then
    echo "Error: GRAPHTRACKS_API_KEY environment variable is not set"
    echo "Please set it with: export GRAPHTRACKS_API_KEY=your_api_key_here"
    exit 1
fi

# Check if DID argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <bluesky_did>"
    echo "Example: $0 did:plc:example123"
    exit 1
fi

# Check if we're in the right directory
if [ ! -f "pubspec.yaml" ]; then
    echo "Error: Please run this script from the root of the graphtracks-client-dart project"
    exit 1
fi

echo "Running GraphTracks Analytics API example..."
echo "DID: $1"
echo "API Key: ${GRAPHTRACKS_API_KEY:0:10}..."
echo ""

# Run the example
dart run example/main.dart "$1" 
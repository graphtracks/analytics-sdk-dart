//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:graphtracks_client/src/api_util.dart';
import 'package:graphtracks_client/src/model/data_point.dart';
import 'package:graphtracks_client/src/model/metric.dart';
import 'package:graphtracks_client/src/model/network.dart';
import 'package:graphtracks_client/src/model/timeframe.dart';

class BlueSkyAnalyticsApi {
  final Dio _dio;

  final Serializers _serializers;

  const BlueSkyAnalyticsApi(this._dio, this._serializers);

  /// Growth rate statistics for account
  /// Get growth rate statistics for account. Timeframe, from or to must be provided.
  ///
  /// Parameters:
  /// * [network] - The network to get stats for
  /// * [accountId] - The account id to get stats for
  /// * [metric] - The metric to get stats for
  /// * [from] - The start date of the timeframe
  /// * [timeframe] - The timeframe to get stats for
  /// * [to] - The end date of the timeframe
  /// * [bucket] - bucket size. Interval in seconds between data points. Data points will be aggregated into this bucket size.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<DataPoint>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<DataPoint>>> getGlobalStatsForAccountAPI({
    required Network network,
    required String accountId,
    required Metric metric,
    required DateTime from,
    Timeframe? timeframe,
    DateTime? to,
    String? bucket,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/v1/api/networks/{network}/accounts/{account_id}/stats/{metric}'
            .replaceAll(
                '{' r'network' '}',
                encodeQueryParameter(
                        _serializers, network, const FullType(Network))
                    .toString())
            .replaceAll(
                '{' r'account_id' '}',
                encodeQueryParameter(
                        _serializers, accountId, const FullType(String))
                    .toString())
            .replaceAll(
                '{' r'metric' '}',
                encodeQueryParameter(
                        _serializers, metric, const FullType(Metric))
                    .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-Key',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (timeframe != null)
        r'timeframe': encodeQueryParameter(
            _serializers, timeframe, const FullType(Timeframe)),
      r'from':
          encodeQueryParameter(_serializers, from, const FullType(DateTime)),
      if (to != null)
        r'to': encodeQueryParameter(_serializers, to, const FullType(DateTime)),
      if (bucket != null)
        r'bucket':
            encodeQueryParameter(_serializers, bucket, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<DataPoint>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(BuiltList, [FullType(DataPoint)]),
            ) as BuiltList<DataPoint>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<DataPoint>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}

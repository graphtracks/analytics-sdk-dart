//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:graphtracks_client/src/api_util.dart';
import 'package:graphtracks_client/src/model/create_network_account_request.dart';
import 'package:graphtracks_client/src/model/data_point.dart';
import 'package:graphtracks_client/src/model/delete_network_account201_response.dart';
import 'package:graphtracks_client/src/model/interaction.dart';
import 'package:graphtracks_client/src/model/metric.dart';
import 'package:graphtracks_client/src/model/network.dart';
import 'package:graphtracks_client/src/model/network_account.dart';
import 'package:graphtracks_client/src/model/posts_inner.dart';
import 'package:graphtracks_client/src/model/timeframe.dart';

class BlueSkyAnalyticsApi {
  final Dio _dio;

  final Serializers _serializers;

  const BlueSkyAnalyticsApi(this._dio, this._serializers);

  /// Create a network account
  /// Create a network account for the authenticated user.
  ///
  /// Parameters:
  /// * [createNetworkAccountRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [NetworkAccount] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<NetworkAccount>> createNetworkAccount({
    required CreateNetworkAccountRequest createNetworkAccountRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/api/networks/account';
    final _options = Options(
      method: r'POST',
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(CreateNetworkAccountRequest);
      _bodyData = _serializers.serialize(createNetworkAccountRequest,
          specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    NetworkAccount? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(NetworkAccount),
            ) as NetworkAccount;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<NetworkAccount>(
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

  /// Delete a network account
  /// Delete a network account from your GraphTracks account.
  ///
  /// Parameters:
  /// * [accountId] - The account id to get or delete. This is the did of the account for BlueSky.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DeleteNetworkAccount201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<DeleteNetworkAccount201Response>> deleteNetworkAccount({
    required String accountId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/api/networks/accounts/{account_id}'.replaceAll(
        '{' r'account_id' '}',
        encodeQueryParameter(_serializers, accountId, const FullType(String))
            .toString());
    final _options = Options(
      method: r'DELETE',
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    DeleteNetworkAccount201Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(DeleteNetworkAccount201Response),
            ) as DeleteNetworkAccount201Response;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<DeleteNetworkAccount201Response>(
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

  /// Growth rate statistics for account
  /// Get growth rate statistics for account. Timeframe, from or to must be provided.
  ///
  /// Parameters:
  /// * [network] - The network to get stats for. Only BlueSky is supported right now.
  /// * [accountId] - The account id to get stats for. This is the did of the account for BlueSky.
  /// * [metric] - The metric to get stats for
  /// * [timeframe] - The timeframe to get stats for. If to and from are not provided, will return now - Timeframe.
  /// * [from]
  /// * [to] - The end date of the timeframe. If not provided, timeframe and from must be provided.
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
  Future<Response<BuiltList<DataPoint>>> getGlobalStatsForAccount({
    required Network network,
    required String accountId,
    required Metric metric,
    Timeframe? timeframe,
    DateTime? from,
    DateTime? to,
    int? bucket = 3600,
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
      if (from != null)
        r'from':
            encodeQueryParameter(_serializers, from, const FullType(DateTime)),
      if (to != null)
        r'to': encodeQueryParameter(_serializers, to, const FullType(DateTime)),
      if (bucket != null)
        r'bucket':
            encodeQueryParameter(_serializers, bucket, const FullType(int)),
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

  /// Get a network account
  /// Get details for a specific network account.
  ///
  /// Parameters:
  /// * [accountId] - The account id to get or delete. This is the did of the account for BlueSky.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [NetworkAccount] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<NetworkAccount>> getNetworkAccount({
    required String accountId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/api/networks/accounts/{account_id}'.replaceAll(
        '{' r'account_id' '}',
        encodeQueryParameter(_serializers, accountId, const FullType(String))
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    NetworkAccount? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(NetworkAccount),
            ) as NetworkAccount;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<NetworkAccount>(
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

  /// Get network accounts for current user
  /// Get all network accounts associated with the authenticated user.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<NetworkAccount>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<NetworkAccount>>> getNetworkAccounts({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/api/networks/accounts';
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<NetworkAccount>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType:
                  const FullType(BuiltList, [FullType(NetworkAccount)]),
            ) as BuiltList<NetworkAccount>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<NetworkAccount>>(
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

  /// Get post interactions
  /// Get detailed interaction data for a specific post, including user profiles who interacted.
  ///
  /// Parameters:
  /// * [network] - The network to get stats for. Only BlueSky is supported right now.
  /// * [accountId] - The account id that owns the post. This is the did of the account for BlueSky.
  /// * [postId] - The post id to get interactions for
  /// * [metric] - The type of interaction to retrieve
  /// * [timeframe] - The timeframe to get interactions for
  /// * [from] - The start date of the timeframe
  /// * [to] - The end date of the timeframe
  /// * [limit] - Maximum number of interactions to return
  /// * [offset] - Offset for pagination
  /// * [sort] - Sort order for interactions
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<Interaction>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<Interaction>>> getPostInteractions({
    required Network network,
    required String accountId,
    required String postId,
    required Metric metric,
    required Timeframe timeframe,
    required DateTime from,
    DateTime? to,
    int? limit = 10,
    int? offset,
    String? sort = 'desc',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/v1/api/networks/{network}/accounts/{account_id}/posts/{post_id}/interactions/{metric}'
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
                '{' r'post_id' '}',
                encodeQueryParameter(
                        _serializers, postId, const FullType(String))
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
      r'timeframe': encodeQueryParameter(
          _serializers, timeframe, const FullType(Timeframe)),
      r'from':
          encodeQueryParameter(_serializers, from, const FullType(DateTime)),
      if (to != null)
        r'to': encodeQueryParameter(_serializers, to, const FullType(DateTime)),
      if (limit != null)
        r'limit':
            encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (offset != null)
        r'offset':
            encodeQueryParameter(_serializers, offset, const FullType(int)),
      if (sort != null)
        r'sort':
            encodeQueryParameter(_serializers, sort, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<Interaction>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(BuiltList, [FullType(Interaction)]),
            ) as BuiltList<Interaction>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<Interaction>>(
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

  /// Get post statistics
  /// Get time series statistics for a specific post. Requires metric, timeframe, and from parameters.
  ///
  /// Parameters:
  /// * [network] - The network to get stats for. Only BlueSky is supported right now.
  /// * [accountId] - The account id that owns the post. This is the did of the account for BlueSky.
  /// * [postId] - The post id to get stats for
  /// * [metric] - The metric to get stats for
  /// * [timeframe] - The timeframe to get stats for
  /// * [from] - The start date of the timeframe
  /// * [bucket] - Bucket size. Interval in seconds between data points. Data points will be aggregated into this bucket size.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<DataPoint>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<DataPoint>>> getPostStats({
    required Network network,
    required String accountId,
    required String postId,
    required Metric metric,
    required Timeframe timeframe,
    required DateTime from,
    int? bucket = 3600,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/v1/api/networks/{network}/accounts/{account_id}/posts/{post_id}/stats'
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
                '{' r'post_id' '}',
                encodeQueryParameter(
                        _serializers, postId, const FullType(String))
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
      r'metric':
          encodeQueryParameter(_serializers, metric, const FullType(Metric)),
      r'timeframe': encodeQueryParameter(
          _serializers, timeframe, const FullType(Timeframe)),
      r'from':
          encodeQueryParameter(_serializers, from, const FullType(DateTime)),
      if (bucket != null)
        r'bucket':
            encodeQueryParameter(_serializers, bucket, const FullType(int)),
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

  /// Get top posts for an account
  /// Get the top performing posts for an account within a specified timeframe.
  ///
  /// Parameters:
  /// * [network] - The network to get stats for. Only BlueSky is supported right now.
  /// * [accountId] - The account id to get top posts for. This is the did of the account for BlueSky.
  /// * [timeframe] - The timeframe to analyze for top posts
  /// * [limit] - Maximum number of top posts to return
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<PostsInner>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<PostsInner>>> getTopPostsForAccount({
    required Network network,
    required String accountId,
    Timeframe? timeframe,
    int? limit = 10,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/api/networks/{network}/accounts/{account_id}/top-posts'
        .replaceAll(
            '{' r'network' '}',
            encodeQueryParameter(_serializers, network, const FullType(Network))
                .toString())
        .replaceAll(
            '{' r'account_id' '}',
            encodeQueryParameter(
                    _serializers, accountId, const FullType(String))
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
      if (limit != null)
        r'limit':
            encodeQueryParameter(_serializers, limit, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<PostsInner>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(BuiltList, [FullType(PostsInner)]),
            ) as BuiltList<PostsInner>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<PostsInner>>(
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

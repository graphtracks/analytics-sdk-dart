//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_global_stats_for_account_api403_response.g.dart';

/// GetGlobalStatsForAccountAPI403Response
///
/// Properties:
/// * [error] 
@BuiltValue()
abstract class GetGlobalStatsForAccountAPI403Response implements Built<GetGlobalStatsForAccountAPI403Response, GetGlobalStatsForAccountAPI403ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  GetGlobalStatsForAccountAPI403Response._();

  factory GetGlobalStatsForAccountAPI403Response([void updates(GetGlobalStatsForAccountAPI403ResponseBuilder b)]) = _$GetGlobalStatsForAccountAPI403Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetGlobalStatsForAccountAPI403ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetGlobalStatsForAccountAPI403Response> get serializer => _$GetGlobalStatsForAccountAPI403ResponseSerializer();
}

class _$GetGlobalStatsForAccountAPI403ResponseSerializer implements PrimitiveSerializer<GetGlobalStatsForAccountAPI403Response> {
  @override
  final Iterable<Type> types = const [GetGlobalStatsForAccountAPI403Response, _$GetGlobalStatsForAccountAPI403Response];

  @override
  final String wireName = r'GetGlobalStatsForAccountAPI403Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetGlobalStatsForAccountAPI403Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetGlobalStatsForAccountAPI403Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetGlobalStatsForAccountAPI403ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetGlobalStatsForAccountAPI403Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetGlobalStatsForAccountAPI403ResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}


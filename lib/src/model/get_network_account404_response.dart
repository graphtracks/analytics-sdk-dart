//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_network_account404_response.g.dart';

/// GetNetworkAccount404Response
///
/// Properties:
/// * [error]
@BuiltValue()
abstract class GetNetworkAccount404Response
    implements
        Built<GetNetworkAccount404Response,
            GetNetworkAccount404ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  GetNetworkAccount404Response._();

  factory GetNetworkAccount404Response(
          [void updates(GetNetworkAccount404ResponseBuilder b)]) =
      _$GetNetworkAccount404Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetNetworkAccount404ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetNetworkAccount404Response> get serializer =>
      _$GetNetworkAccount404ResponseSerializer();
}

class _$GetNetworkAccount404ResponseSerializer
    implements PrimitiveSerializer<GetNetworkAccount404Response> {
  @override
  final Iterable<Type> types = const [
    GetNetworkAccount404Response,
    _$GetNetworkAccount404Response
  ];

  @override
  final String wireName = r'GetNetworkAccount404Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetNetworkAccount404Response object, {
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
    GetNetworkAccount404Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetNetworkAccount404ResponseBuilder result,
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
  GetNetworkAccount404Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetNetworkAccount404ResponseBuilder();
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

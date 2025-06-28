//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_network_account201_response.g.dart';

/// DeleteNetworkAccount201Response
///
/// Properties:
/// * [message]
@BuiltValue()
abstract class DeleteNetworkAccount201Response
    implements
        Built<DeleteNetworkAccount201Response,
            DeleteNetworkAccount201ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  DeleteNetworkAccount201Response._();

  factory DeleteNetworkAccount201Response(
          [void updates(DeleteNetworkAccount201ResponseBuilder b)]) =
      _$DeleteNetworkAccount201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteNetworkAccount201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteNetworkAccount201Response> get serializer =>
      _$DeleteNetworkAccount201ResponseSerializer();
}

class _$DeleteNetworkAccount201ResponseSerializer
    implements PrimitiveSerializer<DeleteNetworkAccount201Response> {
  @override
  final Iterable<Type> types = const [
    DeleteNetworkAccount201Response,
    _$DeleteNetworkAccount201Response
  ];

  @override
  final String wireName = r'DeleteNetworkAccount201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteNetworkAccount201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeleteNetworkAccount201Response object, {
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
    required DeleteNetworkAccount201ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeleteNetworkAccount201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkAccount201ResponseBuilder();
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

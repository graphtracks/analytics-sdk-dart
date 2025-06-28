//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_network_account_request.g.dart';

/// CreateNetworkAccountRequest
///
/// Properties:
/// * [accountHandle] - The account handle to create (e.g., 'graphtracks.com')
/// * [network] - The network to create an account for. Only BlueSky is supported right now.
@BuiltValue()
abstract class CreateNetworkAccountRequest
    implements
        Built<CreateNetworkAccountRequest, CreateNetworkAccountRequestBuilder> {
  /// The account handle to create (e.g., 'graphtracks.com')
  @BuiltValueField(wireName: r'account_handle')
  String get accountHandle;

  /// The network to create an account for. Only BlueSky is supported right now.
  @BuiltValueField(wireName: r'network')
  CreateNetworkAccountRequestNetworkEnum? get network;
  // enum networkEnum {  BlueSky,  };

  CreateNetworkAccountRequest._();

  factory CreateNetworkAccountRequest(
          [void updates(CreateNetworkAccountRequestBuilder b)]) =
      _$CreateNetworkAccountRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateNetworkAccountRequestBuilder b) =>
      b..network = const CreateNetworkAccountRequestNetworkEnum._('BlueSky');

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateNetworkAccountRequest> get serializer =>
      _$CreateNetworkAccountRequestSerializer();
}

class _$CreateNetworkAccountRequestSerializer
    implements PrimitiveSerializer<CreateNetworkAccountRequest> {
  @override
  final Iterable<Type> types = const [
    CreateNetworkAccountRequest,
    _$CreateNetworkAccountRequest
  ];

  @override
  final String wireName = r'CreateNetworkAccountRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateNetworkAccountRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account_handle';
    yield serializers.serialize(
      object.accountHandle,
      specifiedType: const FullType(String),
    );
    if (object.network != null) {
      yield r'network';
      yield serializers.serialize(
        object.network,
        specifiedType: const FullType(CreateNetworkAccountRequestNetworkEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateNetworkAccountRequest object, {
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
    required CreateNetworkAccountRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account_handle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountHandle = valueDes;
          break;
        case r'network':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(CreateNetworkAccountRequestNetworkEnum),
          ) as CreateNetworkAccountRequestNetworkEnum;
          result.network = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateNetworkAccountRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkAccountRequestBuilder();
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

class CreateNetworkAccountRequestNetworkEnum extends EnumClass {
  /// The network to create an account for. Only BlueSky is supported right now.
  @BuiltValueEnumConst(wireName: r'BlueSky')
  static const CreateNetworkAccountRequestNetworkEnum blueSky =
      _$createNetworkAccountRequestNetworkEnum_blueSky;

  static Serializer<CreateNetworkAccountRequestNetworkEnum> get serializer =>
      _$createNetworkAccountRequestNetworkEnumSerializer;

  const CreateNetworkAccountRequestNetworkEnum._(String name) : super(name);

  static BuiltSet<CreateNetworkAccountRequestNetworkEnum> get values =>
      _$createNetworkAccountRequestNetworkEnumValues;
  static CreateNetworkAccountRequestNetworkEnum valueOf(String name) =>
      _$createNetworkAccountRequestNetworkEnumValueOf(name);
}

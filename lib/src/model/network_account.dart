//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'network_account.g.dart';

/// NetworkAccount
///
/// Properties:
/// * [accountId] - The account id (did for BlueSky)
/// * [accountHandle] - The account handle
/// * [accountInternalId] - The internal id used by GraphTracks
/// * [active] - Whether the account is active
/// * [createdAt] - The timestamp for when the account was created
/// * [updatedAt] - The timestamp for when the account was last updated
/// * [network] - The network this account belongs to
@BuiltValue()
abstract class NetworkAccount
    implements Built<NetworkAccount, NetworkAccountBuilder> {
  /// The account id (did for BlueSky)
  @BuiltValueField(wireName: r'account_id')
  String get accountId;

  /// The account handle
  @BuiltValueField(wireName: r'account_handle')
  String get accountHandle;

  /// The internal id used by GraphTracks
  @BuiltValueField(wireName: r'account_internal_id')
  num get accountInternalId;

  /// Whether the account is active
  @BuiltValueField(wireName: r'active')
  bool get active;

  /// The timestamp for when the account was created
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// The timestamp for when the account was last updated
  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  /// The network this account belongs to
  @BuiltValueField(wireName: r'network')
  NetworkAccountNetworkEnum? get network;
  // enum networkEnum {  BlueSky,  };

  NetworkAccount._();

  factory NetworkAccount([void updates(NetworkAccountBuilder b)]) =
      _$NetworkAccount;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NetworkAccountBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NetworkAccount> get serializer =>
      _$NetworkAccountSerializer();
}

class _$NetworkAccountSerializer
    implements PrimitiveSerializer<NetworkAccount> {
  @override
  final Iterable<Type> types = const [NetworkAccount, _$NetworkAccount];

  @override
  final String wireName = r'NetworkAccount';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NetworkAccount object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account_id';
    yield serializers.serialize(
      object.accountId,
      specifiedType: const FullType(String),
    );
    yield r'account_handle';
    yield serializers.serialize(
      object.accountHandle,
      specifiedType: const FullType(String),
    );
    yield r'account_internal_id';
    yield serializers.serialize(
      object.accountInternalId,
      specifiedType: const FullType(num),
    );
    yield r'active';
    yield serializers.serialize(
      object.active,
      specifiedType: const FullType(bool),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.network != null) {
      yield r'network';
      yield serializers.serialize(
        object.network,
        specifiedType: const FullType(NetworkAccountNetworkEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NetworkAccount object, {
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
    required NetworkAccountBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountId = valueDes;
          break;
        case r'account_handle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountHandle = valueDes;
          break;
        case r'account_internal_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.accountInternalId = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.active = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'network':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkAccountNetworkEnum),
          ) as NetworkAccountNetworkEnum;
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
  NetworkAccount deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkAccountBuilder();
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

class NetworkAccountNetworkEnum extends EnumClass {
  /// The network this account belongs to
  @BuiltValueEnumConst(wireName: r'BlueSky')
  static const NetworkAccountNetworkEnum blueSky =
      _$networkAccountNetworkEnum_blueSky;

  static Serializer<NetworkAccountNetworkEnum> get serializer =>
      _$networkAccountNetworkEnumSerializer;

  const NetworkAccountNetworkEnum._(String name) : super(name);

  static BuiltSet<NetworkAccountNetworkEnum> get values =>
      _$networkAccountNetworkEnumValues;
  static NetworkAccountNetworkEnum valueOf(String name) =>
      _$networkAccountNetworkEnumValueOf(name);
}

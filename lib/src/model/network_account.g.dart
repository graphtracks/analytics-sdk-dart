// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NetworkAccountNetworkEnum _$networkAccountNetworkEnum_blueSky =
    const NetworkAccountNetworkEnum._('blueSky');

NetworkAccountNetworkEnum _$networkAccountNetworkEnumValueOf(String name) {
  switch (name) {
    case 'blueSky':
      return _$networkAccountNetworkEnum_blueSky;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NetworkAccountNetworkEnum> _$networkAccountNetworkEnumValues =
    BuiltSet<NetworkAccountNetworkEnum>(const <NetworkAccountNetworkEnum>[
  _$networkAccountNetworkEnum_blueSky,
]);

Serializer<NetworkAccountNetworkEnum> _$networkAccountNetworkEnumSerializer =
    _$NetworkAccountNetworkEnumSerializer();

class _$NetworkAccountNetworkEnumSerializer
    implements PrimitiveSerializer<NetworkAccountNetworkEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'blueSky': 'BlueSky',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'BlueSky': 'blueSky',
  };

  @override
  final Iterable<Type> types = const <Type>[NetworkAccountNetworkEnum];
  @override
  final String wireName = 'NetworkAccountNetworkEnum';

  @override
  Object serialize(Serializers serializers, NetworkAccountNetworkEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NetworkAccountNetworkEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NetworkAccountNetworkEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NetworkAccount extends NetworkAccount {
  @override
  final String accountId;
  @override
  final String accountHandle;
  @override
  final num accountInternalId;
  @override
  final bool active;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final NetworkAccountNetworkEnum? network;

  factory _$NetworkAccount([void Function(NetworkAccountBuilder)? updates]) =>
      (NetworkAccountBuilder()..update(updates))._build();

  _$NetworkAccount._(
      {required this.accountId,
      required this.accountHandle,
      required this.accountInternalId,
      required this.active,
      required this.createdAt,
      required this.updatedAt,
      this.network})
      : super._();
  @override
  NetworkAccount rebuild(void Function(NetworkAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkAccountBuilder toBuilder() => NetworkAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkAccount &&
        accountId == other.accountId &&
        accountHandle == other.accountHandle &&
        accountInternalId == other.accountInternalId &&
        active == other.active &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        network == other.network;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, accountHandle.hashCode);
    _$hash = $jc(_$hash, accountInternalId.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, network.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NetworkAccount')
          ..add('accountId', accountId)
          ..add('accountHandle', accountHandle)
          ..add('accountInternalId', accountInternalId)
          ..add('active', active)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('network', network))
        .toString();
  }
}

class NetworkAccountBuilder
    implements Builder<NetworkAccount, NetworkAccountBuilder> {
  _$NetworkAccount? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _accountHandle;
  String? get accountHandle => _$this._accountHandle;
  set accountHandle(String? accountHandle) =>
      _$this._accountHandle = accountHandle;

  num? _accountInternalId;
  num? get accountInternalId => _$this._accountInternalId;
  set accountInternalId(num? accountInternalId) =>
      _$this._accountInternalId = accountInternalId;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  NetworkAccountNetworkEnum? _network;
  NetworkAccountNetworkEnum? get network => _$this._network;
  set network(NetworkAccountNetworkEnum? network) => _$this._network = network;

  NetworkAccountBuilder() {
    NetworkAccount._defaults(this);
  }

  NetworkAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _accountHandle = $v.accountHandle;
      _accountInternalId = $v.accountInternalId;
      _active = $v.active;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _network = $v.network;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkAccount other) {
    _$v = other as _$NetworkAccount;
  }

  @override
  void update(void Function(NetworkAccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkAccount build() => _build();

  _$NetworkAccount _build() {
    final _$result = _$v ??
        _$NetworkAccount._(
          accountId: BuiltValueNullFieldError.checkNotNull(
              accountId, r'NetworkAccount', 'accountId'),
          accountHandle: BuiltValueNullFieldError.checkNotNull(
              accountHandle, r'NetworkAccount', 'accountHandle'),
          accountInternalId: BuiltValueNullFieldError.checkNotNull(
              accountInternalId, r'NetworkAccount', 'accountInternalId'),
          active: BuiltValueNullFieldError.checkNotNull(
              active, r'NetworkAccount', 'active'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'NetworkAccount', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'NetworkAccount', 'updatedAt'),
          network: network,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

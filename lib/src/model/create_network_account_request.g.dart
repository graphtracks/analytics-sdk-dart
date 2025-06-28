// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_network_account_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateNetworkAccountRequestNetworkEnum
    _$createNetworkAccountRequestNetworkEnum_blueSky =
    const CreateNetworkAccountRequestNetworkEnum._('blueSky');

CreateNetworkAccountRequestNetworkEnum
    _$createNetworkAccountRequestNetworkEnumValueOf(String name) {
  switch (name) {
    case 'blueSky':
      return _$createNetworkAccountRequestNetworkEnum_blueSky;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateNetworkAccountRequestNetworkEnum>
    _$createNetworkAccountRequestNetworkEnumValues = BuiltSet<
        CreateNetworkAccountRequestNetworkEnum>(const <CreateNetworkAccountRequestNetworkEnum>[
  _$createNetworkAccountRequestNetworkEnum_blueSky,
]);

Serializer<CreateNetworkAccountRequestNetworkEnum>
    _$createNetworkAccountRequestNetworkEnumSerializer =
    _$CreateNetworkAccountRequestNetworkEnumSerializer();

class _$CreateNetworkAccountRequestNetworkEnumSerializer
    implements PrimitiveSerializer<CreateNetworkAccountRequestNetworkEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'blueSky': 'BlueSky',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'BlueSky': 'blueSky',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateNetworkAccountRequestNetworkEnum
  ];
  @override
  final String wireName = 'CreateNetworkAccountRequestNetworkEnum';

  @override
  Object serialize(Serializers serializers,
          CreateNetworkAccountRequestNetworkEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateNetworkAccountRequestNetworkEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateNetworkAccountRequestNetworkEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateNetworkAccountRequest extends CreateNetworkAccountRequest {
  @override
  final String accountHandle;
  @override
  final CreateNetworkAccountRequestNetworkEnum? network;

  factory _$CreateNetworkAccountRequest(
          [void Function(CreateNetworkAccountRequestBuilder)? updates]) =>
      (CreateNetworkAccountRequestBuilder()..update(updates))._build();

  _$CreateNetworkAccountRequest._({required this.accountHandle, this.network})
      : super._();
  @override
  CreateNetworkAccountRequest rebuild(
          void Function(CreateNetworkAccountRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNetworkAccountRequestBuilder toBuilder() =>
      CreateNetworkAccountRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNetworkAccountRequest &&
        accountHandle == other.accountHandle &&
        network == other.network;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountHandle.hashCode);
    _$hash = $jc(_$hash, network.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateNetworkAccountRequest')
          ..add('accountHandle', accountHandle)
          ..add('network', network))
        .toString();
  }
}

class CreateNetworkAccountRequestBuilder
    implements
        Builder<CreateNetworkAccountRequest,
            CreateNetworkAccountRequestBuilder> {
  _$CreateNetworkAccountRequest? _$v;

  String? _accountHandle;
  String? get accountHandle => _$this._accountHandle;
  set accountHandle(String? accountHandle) =>
      _$this._accountHandle = accountHandle;

  CreateNetworkAccountRequestNetworkEnum? _network;
  CreateNetworkAccountRequestNetworkEnum? get network => _$this._network;
  set network(CreateNetworkAccountRequestNetworkEnum? network) =>
      _$this._network = network;

  CreateNetworkAccountRequestBuilder() {
    CreateNetworkAccountRequest._defaults(this);
  }

  CreateNetworkAccountRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountHandle = $v.accountHandle;
      _network = $v.network;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNetworkAccountRequest other) {
    _$v = other as _$CreateNetworkAccountRequest;
  }

  @override
  void update(void Function(CreateNetworkAccountRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNetworkAccountRequest build() => _build();

  _$CreateNetworkAccountRequest _build() {
    final _$result = _$v ??
        _$CreateNetworkAccountRequest._(
          accountHandle: BuiltValueNullFieldError.checkNotNull(
              accountHandle, r'CreateNetworkAccountRequest', 'accountHandle'),
          network: network,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_network_account404_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetNetworkAccount404Response extends GetNetworkAccount404Response {
  @override
  final String? error;

  factory _$GetNetworkAccount404Response(
          [void Function(GetNetworkAccount404ResponseBuilder)? updates]) =>
      (GetNetworkAccount404ResponseBuilder()..update(updates))._build();

  _$GetNetworkAccount404Response._({this.error}) : super._();
  @override
  GetNetworkAccount404Response rebuild(
          void Function(GetNetworkAccount404ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNetworkAccount404ResponseBuilder toBuilder() =>
      GetNetworkAccount404ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNetworkAccount404Response && error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetNetworkAccount404Response')
          ..add('error', error))
        .toString();
  }
}

class GetNetworkAccount404ResponseBuilder
    implements
        Builder<GetNetworkAccount404Response,
            GetNetworkAccount404ResponseBuilder> {
  _$GetNetworkAccount404Response? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  GetNetworkAccount404ResponseBuilder() {
    GetNetworkAccount404Response._defaults(this);
  }

  GetNetworkAccount404ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetNetworkAccount404Response other) {
    _$v = other as _$GetNetworkAccount404Response;
  }

  @override
  void update(void Function(GetNetworkAccount404ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetNetworkAccount404Response build() => _build();

  _$GetNetworkAccount404Response _build() {
    final _$result = _$v ??
        _$GetNetworkAccount404Response._(
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

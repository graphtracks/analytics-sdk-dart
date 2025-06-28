// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_network_account201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNetworkAccount201Response
    extends DeleteNetworkAccount201Response {
  @override
  final String? message;

  factory _$DeleteNetworkAccount201Response(
          [void Function(DeleteNetworkAccount201ResponseBuilder)? updates]) =>
      (DeleteNetworkAccount201ResponseBuilder()..update(updates))._build();

  _$DeleteNetworkAccount201Response._({this.message}) : super._();
  @override
  DeleteNetworkAccount201Response rebuild(
          void Function(DeleteNetworkAccount201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNetworkAccount201ResponseBuilder toBuilder() =>
      DeleteNetworkAccount201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNetworkAccount201Response && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteNetworkAccount201Response')
          ..add('message', message))
        .toString();
  }
}

class DeleteNetworkAccount201ResponseBuilder
    implements
        Builder<DeleteNetworkAccount201Response,
            DeleteNetworkAccount201ResponseBuilder> {
  _$DeleteNetworkAccount201Response? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DeleteNetworkAccount201ResponseBuilder() {
    DeleteNetworkAccount201Response._defaults(this);
  }

  DeleteNetworkAccount201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNetworkAccount201Response other) {
    _$v = other as _$DeleteNetworkAccount201Response;
  }

  @override
  void update(void Function(DeleteNetworkAccount201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNetworkAccount201Response build() => _build();

  _$DeleteNetworkAccount201Response _build() {
    final _$result = _$v ??
        _$DeleteNetworkAccount201Response._(
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

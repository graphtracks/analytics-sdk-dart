// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_global_stats_for_account_api403_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetGlobalStatsForAccountAPI403Response
    extends GetGlobalStatsForAccountAPI403Response {
  @override
  final String? error;

  factory _$GetGlobalStatsForAccountAPI403Response(
          [void Function(GetGlobalStatsForAccountAPI403ResponseBuilder)?
              updates]) =>
      (GetGlobalStatsForAccountAPI403ResponseBuilder()..update(updates))
          ._build();

  _$GetGlobalStatsForAccountAPI403Response._({this.error}) : super._();
  @override
  GetGlobalStatsForAccountAPI403Response rebuild(
          void Function(GetGlobalStatsForAccountAPI403ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGlobalStatsForAccountAPI403ResponseBuilder toBuilder() =>
      GetGlobalStatsForAccountAPI403ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGlobalStatsForAccountAPI403Response &&
        error == other.error;
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
    return (newBuiltValueToStringHelper(
            r'GetGlobalStatsForAccountAPI403Response')
          ..add('error', error))
        .toString();
  }
}

class GetGlobalStatsForAccountAPI403ResponseBuilder
    implements
        Builder<GetGlobalStatsForAccountAPI403Response,
            GetGlobalStatsForAccountAPI403ResponseBuilder> {
  _$GetGlobalStatsForAccountAPI403Response? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  GetGlobalStatsForAccountAPI403ResponseBuilder() {
    GetGlobalStatsForAccountAPI403Response._defaults(this);
  }

  GetGlobalStatsForAccountAPI403ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetGlobalStatsForAccountAPI403Response other) {
    _$v = other as _$GetGlobalStatsForAccountAPI403Response;
  }

  @override
  void update(
      void Function(GetGlobalStatsForAccountAPI403ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetGlobalStatsForAccountAPI403Response build() => _build();

  _$GetGlobalStatsForAccountAPI403Response _build() {
    final _$result = _$v ??
        _$GetGlobalStatsForAccountAPI403Response._(
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

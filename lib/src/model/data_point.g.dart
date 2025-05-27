// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_point.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DataPoint extends DataPoint {
  @override
  final DateTime time;
  @override
  final num value;

  factory _$DataPoint([void Function(DataPointBuilder)? updates]) =>
      (new DataPointBuilder()..update(updates))._build();

  _$DataPoint._({required this.time, required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(time, r'DataPoint', 'time');
    BuiltValueNullFieldError.checkNotNull(value, r'DataPoint', 'value');
  }

  @override
  DataPoint rebuild(void Function(DataPointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataPointBuilder toBuilder() => new DataPointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataPoint && time == other.time && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataPoint')
          ..add('time', time)
          ..add('value', value))
        .toString();
  }
}

class DataPointBuilder implements Builder<DataPoint, DataPointBuilder> {
  _$DataPoint? _$v;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  DataPointBuilder() {
    DataPoint._defaults(this);
  }

  DataPointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataPoint other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataPoint;
  }

  @override
  void update(void Function(DataPointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataPoint build() => _build();

  _$DataPoint _build() {
    final _$result = _$v ??
        new _$DataPoint._(
          time:
              BuiltValueNullFieldError.checkNotNull(time, r'DataPoint', 'time'),
          value: BuiltValueNullFieldError.checkNotNull(
              value, r'DataPoint', 'value'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

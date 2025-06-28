// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interaction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Interaction extends Interaction {
  @override
  final DateTime time;
  @override
  final String id;
  @override
  final JsonObject? profile;

  factory _$Interaction([void Function(InteractionBuilder)? updates]) =>
      (InteractionBuilder()..update(updates))._build();

  _$Interaction._({required this.time, required this.id, this.profile})
      : super._();
  @override
  Interaction rebuild(void Function(InteractionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InteractionBuilder toBuilder() => InteractionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Interaction &&
        time == other.time &&
        id == other.id &&
        profile == other.profile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, profile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Interaction')
          ..add('time', time)
          ..add('id', id)
          ..add('profile', profile))
        .toString();
  }
}

class InteractionBuilder implements Builder<Interaction, InteractionBuilder> {
  _$Interaction? _$v;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  JsonObject? _profile;
  JsonObject? get profile => _$this._profile;
  set profile(JsonObject? profile) => _$this._profile = profile;

  InteractionBuilder() {
    Interaction._defaults(this);
  }

  InteractionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _id = $v.id;
      _profile = $v.profile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Interaction other) {
    _$v = other as _$Interaction;
  }

  @override
  void update(void Function(InteractionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Interaction build() => _build();

  _$Interaction _build() {
    final _$result = _$v ??
        _$Interaction._(
          time: BuiltValueNullFieldError.checkNotNull(
              time, r'Interaction', 'time'),
          id: BuiltValueNullFieldError.checkNotNull(id, r'Interaction', 'id'),
          profile: profile,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

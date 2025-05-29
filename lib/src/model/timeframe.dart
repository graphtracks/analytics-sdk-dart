//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timeframe.g.dart';

class Timeframe extends EnumClass {
  /// The timeframe to get stats for
  @BuiltValueEnumConst(wireName: r'1h')
  static const Timeframe n1h = _$n1h;

  /// The timeframe to get stats for
  @BuiltValueEnumConst(wireName: r'1d')
  static const Timeframe n1d = _$n1d;

  /// The timeframe to get stats for
  @BuiltValueEnumConst(wireName: r'7d')
  static const Timeframe n7d = _$n7d;

  /// The timeframe to get stats for
  @BuiltValueEnumConst(wireName: r'30d')
  static const Timeframe n30d = _$n30d;

  /// The timeframe to get stats for
  @BuiltValueEnumConst(wireName: r'90d')
  static const Timeframe n90d = _$n90d;

  /// The timeframe to get stats for
  @BuiltValueEnumConst(wireName: r'all')
  static const Timeframe all = _$all;

  static Serializer<Timeframe> get serializer => _$timeframeSerializer;

  const Timeframe._(String name) : super(name);

  static BuiltSet<Timeframe> get values => _$values;
  static Timeframe valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TimeframeMixin = Object with _$TimeframeMixin;

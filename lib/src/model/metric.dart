//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metric.g.dart';

class Metric extends EnumClass {
  /// The metric to get stats for
  @BuiltValueEnumConst(wireName: r'followers')
  static const Metric followers = _$followers;

  /// The metric to get stats for
  @BuiltValueEnumConst(wireName: r'likes')
  static const Metric likes = _$likes;

  /// The metric to get stats for
  @BuiltValueEnumConst(wireName: r'replies')
  static const Metric replies = _$replies;

  /// The metric to get stats for
  @BuiltValueEnumConst(wireName: r'reposts')
  static const Metric reposts = _$reposts;

  /// The metric to get stats for
  @BuiltValueEnumConst(wireName: r'engagement')
  static const Metric engagement = _$engagement;

  static Serializer<Metric> get serializer => _$metricSerializer;

  const Metric._(String name) : super(name);

  static BuiltSet<Metric> get values => _$values;
  static Metric valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MetricMixin = Object with _$MetricMixin;

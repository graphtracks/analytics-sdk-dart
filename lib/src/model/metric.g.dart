// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metric.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Metric _$followers = const Metric._('followers');
const Metric _$likes = const Metric._('likes');
const Metric _$replies = const Metric._('replies');
const Metric _$reposts = const Metric._('reposts');

Metric _$valueOf(String name) {
  switch (name) {
    case 'followers':
      return _$followers;
    case 'likes':
      return _$likes;
    case 'replies':
      return _$replies;
    case 'reposts':
      return _$reposts;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Metric> _$values = BuiltSet<Metric>(const <Metric>[
  _$followers,
  _$likes,
  _$replies,
  _$reposts,
]);

class _$MetricMeta {
  const _$MetricMeta();
  Metric get followers => _$followers;
  Metric get likes => _$likes;
  Metric get replies => _$replies;
  Metric get reposts => _$reposts;
  Metric valueOf(String name) => _$valueOf(name);
  BuiltSet<Metric> get values => _$values;
}

mixin _$MetricMixin {
  // ignore: non_constant_identifier_names
  _$MetricMeta get Metric => const _$MetricMeta();
}

Serializer<Metric> _$metricSerializer = _$MetricSerializer();

class _$MetricSerializer implements PrimitiveSerializer<Metric> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'followers': 'followers',
    'likes': 'likes',
    'replies': 'replies',
    'reposts': 'reposts',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'followers': 'followers',
    'likes': 'likes',
    'replies': 'replies',
    'reposts': 'reposts',
  };

  @override
  final Iterable<Type> types = const <Type>[Metric];
  @override
  final String wireName = 'Metric';

  @override
  Object serialize(Serializers serializers, Metric object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Metric deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Metric.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

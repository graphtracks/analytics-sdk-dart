// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeframe.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Timeframe _$n1h = const Timeframe._('n1h');
const Timeframe _$n1d = const Timeframe._('n1d');
const Timeframe _$n7d = const Timeframe._('n7d');
const Timeframe _$n30d = const Timeframe._('n30d');
const Timeframe _$n90d = const Timeframe._('n90d');
const Timeframe _$all = const Timeframe._('all');

Timeframe _$valueOf(String name) {
  switch (name) {
    case 'n1h':
      return _$n1h;
    case 'n1d':
      return _$n1d;
    case 'n7d':
      return _$n7d;
    case 'n30d':
      return _$n30d;
    case 'n90d':
      return _$n90d;
    case 'all':
      return _$all;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Timeframe> _$values = BuiltSet<Timeframe>(const <Timeframe>[
  _$n1h,
  _$n1d,
  _$n7d,
  _$n30d,
  _$n90d,
  _$all,
]);

class _$TimeframeMeta {
  const _$TimeframeMeta();
  Timeframe get n1h => _$n1h;
  Timeframe get n1d => _$n1d;
  Timeframe get n7d => _$n7d;
  Timeframe get n30d => _$n30d;
  Timeframe get n90d => _$n90d;
  Timeframe get all => _$all;
  Timeframe valueOf(String name) => _$valueOf(name);
  BuiltSet<Timeframe> get values => _$values;
}

abstract class _$TimeframeMixin {
  // ignore: non_constant_identifier_names
  _$TimeframeMeta get Timeframe => const _$TimeframeMeta();
}

Serializer<Timeframe> _$timeframeSerializer = _$TimeframeSerializer();

class _$TimeframeSerializer implements PrimitiveSerializer<Timeframe> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n1h': '1h',
    'n1d': '1d',
    'n7d': '7d',
    'n30d': '30d',
    'n90d': '90d',
    'all': 'all',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '1h': 'n1h',
    '1d': 'n1d',
    '7d': 'n7d',
    '30d': 'n30d',
    '90d': 'n90d',
    'all': 'all',
  };

  @override
  final Iterable<Type> types = const <Type>[Timeframe];
  @override
  final String wireName = 'Timeframe';

  @override
  Object serialize(Serializers serializers, Timeframe object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Timeframe deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Timeframe.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

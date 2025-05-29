// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Network _$blueSky = const Network._('blueSky');

Network _$valueOf(String name) {
  switch (name) {
    case 'blueSky':
      return _$blueSky;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Network> _$values = BuiltSet<Network>(const <Network>[
  _$blueSky,
]);

class _$NetworkMeta {
  const _$NetworkMeta();
  Network get blueSky => _$blueSky;
  Network valueOf(String name) => _$valueOf(name);
  BuiltSet<Network> get values => _$values;
}

mixin _$NetworkMixin {
  // ignore: non_constant_identifier_names
  _$NetworkMeta get Network => const _$NetworkMeta();
}

Serializer<Network> _$networkSerializer = _$NetworkSerializer();

class _$NetworkSerializer implements PrimitiveSerializer<Network> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'blueSky': 'BlueSky',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'BlueSky': 'blueSky',
  };

  @override
  final Iterable<Type> types = const <Type>[Network];
  @override
  final String wireName = 'Network';

  @override
  Object serialize(Serializers serializers, Network object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Network deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Network.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

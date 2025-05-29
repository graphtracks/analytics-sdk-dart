//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'network.g.dart';

class Network extends EnumClass {
  /// The network to get stats for. Currently only BlueSky is supported.
  @BuiltValueEnumConst(wireName: r'BlueSky')
  static const Network blueSky = _$blueSky;

  static Serializer<Network> get serializer => _$networkSerializer;

  const Network._(String name) : super(name);

  static BuiltSet<Network> get values => _$values;
  static Network valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class NetworkMixin = Object with _$NetworkMixin;

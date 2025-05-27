//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'data_point.g.dart';

/// DataPoint
///
/// Properties:
/// * [time] - The timestamp for this data point. UTC timezone.
/// * [value] - The numeric value for this data point.
@BuiltValue()
abstract class DataPoint implements Built<DataPoint, DataPointBuilder> {
  /// The timestamp for this data point. UTC timezone.
  @BuiltValueField(wireName: r'time')
  DateTime get time;

  /// The numeric value for this data point.
  @BuiltValueField(wireName: r'value')
  num get value;

  DataPoint._();

  factory DataPoint([void updates(DataPointBuilder b)]) = _$DataPoint;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DataPointBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DataPoint> get serializer => _$DataPointSerializer();
}

class _$DataPointSerializer implements PrimitiveSerializer<DataPoint> {
  @override
  final Iterable<Type> types = const [DataPoint, _$DataPoint];

  @override
  final String wireName = r'DataPoint';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DataPoint object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DataPoint object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DataPointBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.time = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DataPoint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DataPointBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}


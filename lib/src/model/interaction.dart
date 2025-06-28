//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'interaction.g.dart';

/// Interaction
///
/// Properties:
/// * [time] - The timestamp for this interaction. UTC timezone.
/// * [id] - The user id who performed the interaction
/// * [profile] - The user profile information
@BuiltValue()
abstract class Interaction implements Built<Interaction, InteractionBuilder> {
  /// The timestamp for this interaction. UTC timezone.
  @BuiltValueField(wireName: r'time')
  DateTime get time;

  /// The user id who performed the interaction
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The user profile information
  @BuiltValueField(wireName: r'profile')
  JsonObject? get profile;

  Interaction._();

  factory Interaction([void updates(InteractionBuilder b)]) = _$Interaction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InteractionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Interaction> get serializer => _$InteractionSerializer();
}

class _$InteractionSerializer implements PrimitiveSerializer<Interaction> {
  @override
  final Iterable<Type> types = const [Interaction, _$Interaction];

  @override
  final String wireName = r'Interaction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Interaction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.profile != null) {
      yield r'profile';
      yield serializers.serialize(
        object.profile,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Interaction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InteractionBuilder result,
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
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'profile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.profile = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Interaction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InteractionBuilder();
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

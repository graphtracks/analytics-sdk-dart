//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_data.g.dart';

/// PostData
///
/// Properties:
/// * [likes] - The number of likes on the post
/// * [reposts] - The number of reposts
/// * [replies] - The number of replies
/// * [engagement] - The total engagement metric
/// * [details] - Additional post details
/// * [indexedAt] - The timestamp for when the post was indexed
@BuiltValue(instantiable: false)
abstract class PostData {
  /// The number of likes on the post
  @BuiltValueField(wireName: r'likes')
  num? get likes;

  /// The number of reposts
  @BuiltValueField(wireName: r'reposts')
  num? get reposts;

  /// The number of replies
  @BuiltValueField(wireName: r'replies')
  num? get replies;

  /// The total engagement metric
  @BuiltValueField(wireName: r'engagement')
  num? get engagement;

  /// Additional post details
  @BuiltValueField(wireName: r'details')
  JsonObject? get details;

  /// The timestamp for when the post was indexed
  @BuiltValueField(wireName: r'indexedAt')
  DateTime? get indexedAt;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostData> get serializer => _$PostDataSerializer();
}

class _$PostDataSerializer implements PrimitiveSerializer<PostData> {
  @override
  final Iterable<Type> types = const [PostData];

  @override
  final String wireName = r'PostData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.likes != null) {
      yield r'likes';
      yield serializers.serialize(
        object.likes,
        specifiedType: const FullType(num),
      );
    }
    if (object.reposts != null) {
      yield r'reposts';
      yield serializers.serialize(
        object.reposts,
        specifiedType: const FullType(num),
      );
    }
    if (object.replies != null) {
      yield r'replies';
      yield serializers.serialize(
        object.replies,
        specifiedType: const FullType(num),
      );
    }
    if (object.engagement != null) {
      yield r'engagement';
      yield serializers.serialize(
        object.engagement,
        specifiedType: const FullType(num),
      );
    }
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.indexedAt != null) {
      yield r'indexedAt';
      yield serializers.serialize(
        object.indexedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  PostData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
        specifiedType: FullType($PostData)) as $PostData;
  }
}

/// a concrete implementation of [PostData], since [PostData] is not instantiable
@BuiltValue(instantiable: true)
abstract class $PostData
    implements PostData, Built<$PostData, $PostDataBuilder> {
  $PostData._();

  factory $PostData([void Function($PostDataBuilder)? updates]) = _$$PostData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($PostDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$PostData> get serializer => _$$PostDataSerializer();
}

class _$$PostDataSerializer implements PrimitiveSerializer<$PostData> {
  @override
  final Iterable<Type> types = const [$PostData, _$$PostData];

  @override
  final String wireName = r'$PostData';

  @override
  Object serialize(
    Serializers serializers,
    $PostData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(PostData))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'likes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.likes = valueDes;
          break;
        case r'reposts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.reposts = valueDes;
          break;
        case r'replies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.replies = valueDes;
          break;
        case r'engagement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.engagement = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.details = valueDes;
          break;
        case r'indexedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.indexedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $PostData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $PostDataBuilder();
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

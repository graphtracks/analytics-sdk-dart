//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:graphtracks_client/src/model/post.dart';
import 'package:graphtracks_client/src/model/post_data.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'posts_inner.g.dart';

/// PostsInner
///
/// Properties:
/// * [postId] - The post identifier
/// * [likes] - The number of likes on the post
/// * [reposts] - The number of reposts
/// * [replies] - The number of replies
/// * [engagement] - The total engagement metric
/// * [details] - Additional post details
/// * [indexedAt] - The timestamp for when the post was indexed
@BuiltValue()
abstract class PostsInner
    implements Post, PostData, Built<PostsInner, PostsInnerBuilder> {
  PostsInner._();

  factory PostsInner([void updates(PostsInnerBuilder b)]) = _$PostsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostsInner> get serializer => _$PostsInnerSerializer();
}

class _$PostsInnerSerializer implements PrimitiveSerializer<PostsInner> {
  @override
  final Iterable<Type> types = const [PostsInner, _$PostsInner];

  @override
  final String wireName = r'PostsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.indexedAt != null) {
      yield r'indexedAt';
      yield serializers.serialize(
        object.indexedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.engagement != null) {
      yield r'engagement';
      yield serializers.serialize(
        object.engagement,
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
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.postId != null) {
      yield r'post_id';
      yield serializers.serialize(
        object.postId,
        specifiedType: const FullType(String),
      );
    }
    if (object.reposts != null) {
      yield r'reposts';
      yield serializers.serialize(
        object.reposts,
        specifiedType: const FullType(num),
      );
    }
    if (object.likes != null) {
      yield r'likes';
      yield serializers.serialize(
        object.likes,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostsInner object, {
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
    required PostsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'indexedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.indexedAt = valueDes;
          break;
        case r'engagement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.engagement = valueDes;
          break;
        case r'replies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.replies = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.details = valueDes;
          break;
        case r'post_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.postId = valueDes;
          break;
        case r'reposts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.reposts = valueDes;
          break;
        case r'likes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.likes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostsInnerBuilder();
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

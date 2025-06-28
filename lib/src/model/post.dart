//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post.g.dart';

/// Post
///
/// Properties:
/// * [postId] - The post identifier
@BuiltValue(instantiable: false)
abstract class Post {
  /// The post identifier
  @BuiltValueField(wireName: r'post_id')
  String? get postId;

  @BuiltValueSerializer(custom: true)
  static Serializer<Post> get serializer => _$PostSerializer();
}

class _$PostSerializer implements PrimitiveSerializer<Post> {
  @override
  final Iterable<Type> types = const [Post];

  @override
  final String wireName = r'Post';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Post object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.postId != null) {
      yield r'post_id';
      yield serializers.serialize(
        object.postId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Post object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  Post deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($Post))
        as $Post;
  }
}

/// a concrete implementation of [Post], since [Post] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Post implements Post, Built<$Post, $PostBuilder> {
  $Post._();

  factory $Post([void Function($PostBuilder)? updates]) = _$$Post;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($PostBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Post> get serializer => _$$PostSerializer();
}

class _$$PostSerializer implements PrimitiveSerializer<$Post> {
  @override
  final Iterable<Type> types = const [$Post, _$$Post];

  @override
  final String wireName = r'$Post';

  @override
  Object serialize(
    Serializers serializers,
    $Post object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Post))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'post_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.postId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $Post deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $PostBuilder();
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

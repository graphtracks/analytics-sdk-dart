// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostsInner extends PostsInner {
  @override
  final String? postId;
  @override
  final num? likes;
  @override
  final num? reposts;
  @override
  final num? replies;
  @override
  final num? engagement;
  @override
  final JsonObject? details;
  @override
  final DateTime? indexedAt;

  factory _$PostsInner([void Function(PostsInnerBuilder)? updates]) =>
      (PostsInnerBuilder()..update(updates))._build();

  _$PostsInner._(
      {this.postId,
      this.likes,
      this.reposts,
      this.replies,
      this.engagement,
      this.details,
      this.indexedAt})
      : super._();
  @override
  PostsInner rebuild(void Function(PostsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsInnerBuilder toBuilder() => PostsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsInner &&
        postId == other.postId &&
        likes == other.likes &&
        reposts == other.reposts &&
        replies == other.replies &&
        engagement == other.engagement &&
        details == other.details &&
        indexedAt == other.indexedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, likes.hashCode);
    _$hash = $jc(_$hash, reposts.hashCode);
    _$hash = $jc(_$hash, replies.hashCode);
    _$hash = $jc(_$hash, engagement.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jc(_$hash, indexedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostsInner')
          ..add('postId', postId)
          ..add('likes', likes)
          ..add('reposts', reposts)
          ..add('replies', replies)
          ..add('engagement', engagement)
          ..add('details', details)
          ..add('indexedAt', indexedAt))
        .toString();
  }
}

class PostsInnerBuilder
    implements
        Builder<PostsInner, PostsInnerBuilder>,
        PostBuilder,
        PostDataBuilder {
  _$PostsInner? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(covariant String? postId) => _$this._postId = postId;

  num? _likes;
  num? get likes => _$this._likes;
  set likes(covariant num? likes) => _$this._likes = likes;

  num? _reposts;
  num? get reposts => _$this._reposts;
  set reposts(covariant num? reposts) => _$this._reposts = reposts;

  num? _replies;
  num? get replies => _$this._replies;
  set replies(covariant num? replies) => _$this._replies = replies;

  num? _engagement;
  num? get engagement => _$this._engagement;
  set engagement(covariant num? engagement) => _$this._engagement = engagement;

  JsonObject? _details;
  JsonObject? get details => _$this._details;
  set details(covariant JsonObject? details) => _$this._details = details;

  DateTime? _indexedAt;
  DateTime? get indexedAt => _$this._indexedAt;
  set indexedAt(covariant DateTime? indexedAt) => _$this._indexedAt = indexedAt;

  PostsInnerBuilder() {
    PostsInner._defaults(this);
  }

  PostsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _likes = $v.likes;
      _reposts = $v.reposts;
      _replies = $v.replies;
      _engagement = $v.engagement;
      _details = $v.details;
      _indexedAt = $v.indexedAt;
      _$v = null;
    }
    return this;
  }

  @override
// ignore: override_on_non_overriding_method
  void replace(covariant PostsInner other) {
    _$v = other as _$PostsInner;
  }

  @override
  void update(void Function(PostsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostsInner build() => _build();

  _$PostsInner _build() {
    final _$result = _$v ??
        _$PostsInner._(
          postId: postId,
          likes: likes,
          reposts: reposts,
          replies: replies,
          engagement: engagement,
          details: details,
          indexedAt: indexedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

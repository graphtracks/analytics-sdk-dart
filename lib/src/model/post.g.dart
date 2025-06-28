// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class PostBuilder {
  void replace(Post other);
  void update(void Function(PostBuilder) updates);
  String? get postId;
  set postId(String? postId);
}

class _$$Post extends $Post {
  @override
  final String? postId;

  factory _$$Post([void Function($PostBuilder)? updates]) =>
      ($PostBuilder()..update(updates))._build();

  _$$Post._({this.postId}) : super._();
  @override
  $Post rebuild(void Function($PostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $PostBuilder toBuilder() => $PostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $Post && postId == other.postId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$Post')..add('postId', postId))
        .toString();
  }
}

class $PostBuilder implements Builder<$Post, $PostBuilder>, PostBuilder {
  _$$Post? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(covariant String? postId) => _$this._postId = postId;

  $PostBuilder() {
    $Post._defaults(this);
  }

  $PostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $Post other) {
    _$v = other as _$$Post;
  }

  @override
  void update(void Function($PostBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Post build() => _build();

  _$$Post _build() {
    final _$result = _$v ??
        _$$Post._(
          postId: postId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

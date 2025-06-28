// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class PostDataBuilder {
  void replace(PostData other);
  void update(void Function(PostDataBuilder) updates);
  num? get likes;
  set likes(num? likes);

  num? get reposts;
  set reposts(num? reposts);

  num? get replies;
  set replies(num? replies);

  num? get engagement;
  set engagement(num? engagement);

  JsonObject? get details;
  set details(JsonObject? details);

  DateTime? get indexedAt;
  set indexedAt(DateTime? indexedAt);
}

class _$$PostData extends $PostData {
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

  factory _$$PostData([void Function($PostDataBuilder)? updates]) =>
      ($PostDataBuilder()..update(updates))._build();

  _$$PostData._(
      {this.likes,
      this.reposts,
      this.replies,
      this.engagement,
      this.details,
      this.indexedAt})
      : super._();
  @override
  $PostData rebuild(void Function($PostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $PostDataBuilder toBuilder() => $PostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $PostData &&
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
    return (newBuiltValueToStringHelper(r'$PostData')
          ..add('likes', likes)
          ..add('reposts', reposts)
          ..add('replies', replies)
          ..add('engagement', engagement)
          ..add('details', details)
          ..add('indexedAt', indexedAt))
        .toString();
  }
}

class $PostDataBuilder
    implements Builder<$PostData, $PostDataBuilder>, PostDataBuilder {
  _$$PostData? _$v;

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

  $PostDataBuilder() {
    $PostData._defaults(this);
  }

  $PostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(covariant $PostData other) {
    _$v = other as _$$PostData;
  }

  @override
  void update(void Function($PostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $PostData build() => _build();

  _$$PostData _build() {
    final _$result = _$v ??
        _$$PostData._(
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

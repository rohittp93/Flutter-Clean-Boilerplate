// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_article;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltArticle> _$builtArticleSerializer =
    new _$BuiltArticleSerializer();

class _$BuiltArticleSerializer implements StructuredSerializer<BuiltArticle> {
  @override
  final Iterable<Type> types = const [BuiltArticle, _$BuiltArticle];
  @override
  final String wireName = 'BuiltArticle';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltArticle object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'urlToImage',
      serializers.serialize(object.urlToImage,
          specifiedType: const FullType(String)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltArticle deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltArticleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'urlToImage':
          result.urlToImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltArticle extends BuiltArticle {
  @override
  final String title;
  @override
  final String description;
  @override
  final String url;
  @override
  final String urlToImage;
  @override
  final String content;

  factory _$BuiltArticle([void Function(BuiltArticleBuilder) updates]) =>
      (new BuiltArticleBuilder()..update(updates)).build();

  _$BuiltArticle._(
      {this.title, this.description, this.url, this.urlToImage, this.content})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('BuiltArticle', 'title');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('BuiltArticle', 'description');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('BuiltArticle', 'url');
    }
    if (urlToImage == null) {
      throw new BuiltValueNullFieldError('BuiltArticle', 'urlToImage');
    }
    if (content == null) {
      throw new BuiltValueNullFieldError('BuiltArticle', 'content');
    }
  }

  @override
  BuiltArticle rebuild(void Function(BuiltArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltArticleBuilder toBuilder() => new BuiltArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltArticle &&
        title == other.title &&
        description == other.description &&
        url == other.url &&
        urlToImage == other.urlToImage &&
        content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, title.hashCode), description.hashCode),
                url.hashCode),
            urlToImage.hashCode),
        content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltArticle')
          ..add('title', title)
          ..add('description', description)
          ..add('url', url)
          ..add('urlToImage', urlToImage)
          ..add('content', content))
        .toString();
  }
}

class BuiltArticleBuilder
    implements Builder<BuiltArticle, BuiltArticleBuilder> {
  _$BuiltArticle _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _urlToImage;
  String get urlToImage => _$this._urlToImage;
  set urlToImage(String urlToImage) => _$this._urlToImage = urlToImage;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  BuiltArticleBuilder();

  BuiltArticleBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _description = _$v.description;
      _url = _$v.url;
      _urlToImage = _$v.urlToImage;
      _content = _$v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltArticle other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltArticle;
  }

  @override
  void update(void Function(BuiltArticleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltArticle build() {
    final _$result = _$v ??
        new _$BuiltArticle._(
            title: title,
            description: description,
            url: url,
            urlToImage: urlToImage,
            content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

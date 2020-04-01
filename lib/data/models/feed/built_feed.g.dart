// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_feed;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltFeed> _$builtFeedSerializer = new _$BuiltFeedSerializer();

class _$BuiltFeedSerializer implements StructuredSerializer<BuiltFeed> {
  @override
  final Iterable<Type> types = const [BuiltFeed, _$BuiltFeed];
  @override
  final String wireName = 'BuiltFeed';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltFeed object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'totalResults',
      serializers.serialize(object.totalResults,
          specifiedType: const FullType(int)),
      'articles',
      serializers.serialize(object.articles,
          specifiedType:
              const FullType(List, const [const FullType(BuiltArticle)])),
    ];

    return result;
  }

  @override
  BuiltFeed deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltFeedBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalResults':
          result.totalResults = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'articles':
          result.articles = serializers.deserialize(value,
                  specifiedType: const FullType(
                      List, const [const FullType(BuiltArticle)]))
              as List<BuiltArticle>;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltFeed extends BuiltFeed {
  @override
  final String status;
  @override
  final int totalResults;
  @override
  final List<BuiltArticle> articles;

  factory _$BuiltFeed([void Function(BuiltFeedBuilder) updates]) =>
      (new BuiltFeedBuilder()..update(updates)).build();

  _$BuiltFeed._({this.status, this.totalResults, this.articles}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('BuiltFeed', 'status');
    }
    if (totalResults == null) {
      throw new BuiltValueNullFieldError('BuiltFeed', 'totalResults');
    }
    if (articles == null) {
      throw new BuiltValueNullFieldError('BuiltFeed', 'articles');
    }
  }

  @override
  BuiltFeed rebuild(void Function(BuiltFeedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltFeedBuilder toBuilder() => new BuiltFeedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltFeed &&
        status == other.status &&
        totalResults == other.totalResults &&
        articles == other.articles;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, status.hashCode), totalResults.hashCode),
        articles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltFeed')
          ..add('status', status)
          ..add('totalResults', totalResults)
          ..add('articles', articles))
        .toString();
  }
}

class BuiltFeedBuilder implements Builder<BuiltFeed, BuiltFeedBuilder> {
  _$BuiltFeed _$v;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  int _totalResults;
  int get totalResults => _$this._totalResults;
  set totalResults(int totalResults) => _$this._totalResults = totalResults;

  List<BuiltArticle> _articles;
  List<BuiltArticle> get articles => _$this._articles;
  set articles(List<BuiltArticle> articles) => _$this._articles = articles;

  BuiltFeedBuilder();

  BuiltFeedBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _totalResults = _$v.totalResults;
      _articles = _$v.articles;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltFeed other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltFeed;
  }

  @override
  void update(void Function(BuiltFeedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltFeed build() {
    final _$result = _$v ??
        new _$BuiltFeed._(
            status: status, totalResults: totalResults, articles: articles);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

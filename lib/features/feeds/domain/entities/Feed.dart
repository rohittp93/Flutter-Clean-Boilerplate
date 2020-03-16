import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Feed extends Equatable {
  final String title, url, publishedAt, content;

  Feed({
    @required this.title,
    @required this.url,
    @required this.publishedAt,
    @required this.content,
  }) : super();

  @override
  List<Object> get props => null;
}

import 'package:json_annotation/json_annotation.dart';

part 'articles_decoding.g.dart';

@JsonSerializable()
class Article {
  Article(this.id, this.title, this.short_text, this.image);

  int? id;
  String? title;
  String? short_text;
  String? image;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}

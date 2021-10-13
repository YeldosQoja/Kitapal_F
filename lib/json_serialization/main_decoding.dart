import 'package:json_annotation/json_annotation.dart';
import 'package:kitapal/json_serialization/main_props/articles_decoding.dart';
import 'package:kitapal/json_serialization/main_props/banner_decoding.dart';
import 'package:kitapal/json_serialization/main_props/collections_decoding.dart';

part 'main_decoding.g.dart';

@JsonSerializable(explicitToJson: true)
class Main {
  Main(this.banner, this.collections, this.articles);

  List<Banner> banner;
  List<Collection> collections;
  List<Article> articles;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

  Map<String, dynamic> toJson() => _$MainToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'authors_decoding.g.dart';

@JsonSerializable()
class Author {
  Author(
    this.id,
    this.name,
  );

  int? id;
  String? name;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}

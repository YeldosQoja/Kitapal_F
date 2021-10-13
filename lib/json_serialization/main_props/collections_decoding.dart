import 'package:json_annotation/json_annotation.dart';
import 'package:kitapal/json_serialization/main_props/books_decoding.dart';

part 'collections_decoding.g.dart';

@JsonSerializable()
class Collection {
  Collection(
    this.books,
    this.collection_name,
  );

  String? collection_name;
  List<Book> books;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionToJson(this);
}

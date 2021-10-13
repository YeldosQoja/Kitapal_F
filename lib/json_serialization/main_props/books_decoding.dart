import 'package:json_annotation/json_annotation.dart';
import 'package:kitapal/json_serialization/main_props/authors_decoding.dart';

part 'books_decoding.g.dart';

@JsonSerializable()
class Book {
  Book(
    this.audio_price,
    this.author,
    this.available,
    this.book_image,
    this.book_lang,
    this.ebook_price,
    this.id,
    this.name,
    this.paperbook_price,
    this.sale_percentage,
    this.selected,
  );

  int? id;
  String? name;
  List<Author> author;
  String? book_image;
  String? book_lang;
  int? audio_price;
  int? paperbook_price;
  int? ebook_price;
  dynamic sale_percentage;
  dynamic selected;
  dynamic available;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  Map<String, dynamic> toJson() => _$BookToJson(this);
}

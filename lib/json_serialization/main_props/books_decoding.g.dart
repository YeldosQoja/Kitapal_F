// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_decoding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) {
  return Book(
    json['audio_price'] as int?,
    (json['author'] as List<dynamic>)
        .map((e) => Author.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['available'],
    json['book_image'] as String?,
    json['book_lang'] as String?,
    json['ebook_price'] as int?,
    json['id'] as int?,
    json['name'] as String?,
    json['paperbook_price'] as int?,
    json['sale_percentage'],
    json['selected'],
  );
}

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'author': instance.author,
      'book_image': instance.book_image,
      'book_lang': instance.book_lang,
      'audio_price': instance.audio_price,
      'paperbook_price': instance.paperbook_price,
      'ebook_price': instance.ebook_price,
      'sale_percentage': instance.sale_percentage,
      'selected': instance.selected,
      'available': instance.available,
    };

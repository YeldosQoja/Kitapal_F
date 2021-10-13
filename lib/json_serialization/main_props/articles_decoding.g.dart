// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_decoding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article(
    json['id'] as int?,
    json['title'] as String?,
    json['short_text'] as String?,
    json['image'] as String?,
  );
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'short_text': instance.short_text,
      'image': instance.image,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_decoding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Main _$MainFromJson(Map<String, dynamic> json) {
  return Main(
    (json['banner'] as List<dynamic>)
        .map((e) => Banner.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['collections'] as List<dynamic>)
        .map((e) => Collection.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['articles'] as List<dynamic>)
        .map((e) => Article.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
      'banner': instance.banner.map((e) => e.toJson()).toList(),
      'collections': instance.collections.map((e) => e.toJson()).toList(),
      'articles': instance.articles.map((e) => e.toJson()).toList(),
    };

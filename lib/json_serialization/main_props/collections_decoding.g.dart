// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections_decoding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  return Collection(
    (json['books'] as List<dynamic>)
        .map((e) => Book.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['collection_name'] as String?,
  );
}

Map<String, dynamic> _$CollectionToJson(Collection instance) =>
    <String, dynamic>{
      'collection_name': instance.collection_name,
      'books': instance.books,
    };

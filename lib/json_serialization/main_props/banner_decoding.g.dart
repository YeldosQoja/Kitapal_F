// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_decoding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banner _$BannerFromJson(Map<String, dynamic> json) {
  return Banner(
    json['book_id'] as int?,
    json['book_image'] as String?,
    json['book_name'] as String?,
    json['button_text'] as String?,
    json['id'],
    json['slider_header'] as String?,
    json['slider_image'] as String?,
    json['slider_text'] as String?,
    json['type'] as String?,
  );
}

Map<String, dynamic> _$BannerToJson(Banner instance) => <String, dynamic>{
      'slider_image': instance.slider_image,
      'id': instance.id,
      'slider_header': instance.slider_header,
      'slider_text': instance.slider_text,
      'button_text': instance.button_text,
      'type': instance.type,
      'book_id': instance.book_id,
      'book_name': instance.book_name,
      'book_image': instance.book_image,
    };

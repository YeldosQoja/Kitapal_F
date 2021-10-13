import 'package:json_annotation/json_annotation.dart';

part 'banner_decoding.g.dart';

@JsonSerializable()
class Banner {
  Banner(
      this.book_id,
      this.book_image,
      this.book_name,
      this.button_text,
      this.id,
      this.slider_header,
      this.slider_image,
      this.slider_text,
      this.type);

  String? slider_image;
  dynamic id;
  String? slider_header;
  String? slider_text;
  String? button_text;
  String? type;
  int? book_id;
  String? book_name;
  String? book_image;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);

  Map<String, dynamic> toJson() => _$BannerToJson(this);
}

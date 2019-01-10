import 'package:json_annotation/json_annotation.dart';
part 'package:flutter_one/bean/ZhiHuNewsBean.g.dart';

@JsonSerializable()
class ZhiHuNewsBean extends Object with _$ZhiHuNewsBeanSerializerMixin{
  String title;
  String url;
  String image;
  String share_url;
  String thumbnail;
  String ga_prefix;
  int id;

  ZhiHuNewsBean({this.title, this.url, this.image, this.share_url,
      this.thumbnail, this.ga_prefix, this.id});
  factory ZhiHuNewsBean.fromJson(Map<String,dynamic> json) => _$ZhiHuNewsBeanFromJson(json);
  Map<String,dynamic> toJson() => _$ZhiHuNewsBeanToJson(this);

}
import 'package:json_annotation/json_annotation.dart';
part 'package:flutter_one/bean/TopStoriesBean.g.dart';

@JsonSerializable()
class TopStoriesBean extends Object with _$TopStoriesBeanSerializerMixin{

  String image_source;
  String title;
  String url;
  String image;
  String share_url;
  String ga_prefix;
  int id;

  TopStoriesBean({this.image_source, this.title, this.url, this.image,
      this.share_url, this.ga_prefix, this.id});
  factory TopStoriesBean.fromJson(Map<String,dynamic> json) => _$TopStoriesBeanFromJson(json);
  Map<String,dynamic> toJson() => _$TopStoriesBeanToJson(this);

}
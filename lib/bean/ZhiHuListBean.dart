import 'package:flutter_one/bean/TopStoriesBean.dart';
import 'package:flutter_one/bean/ZhiHuNewsBean.dart';
import 'package:json_annotation/json_annotation.dart';
part 'ZhiHuListBean.g.dart';

@JsonSerializable()
class ZhiHuListBean extends Object with _$ZhiHuListBeanSerializerMixin{
  String date;
  List<ZhiHuNewsBean> news;
  bool is_today;
  List<TopStoriesBean> top_stories;
  String display_date;

  ZhiHuListBean({this.date, this.news, this.is_today, this.top_stories,
      this.display_date});
  factory ZhiHuListBean.fromJson(Map<String,dynamic> json) => _$ZhiHuListBeanFromJson(json);
  Map<String,String> toJson() => _$ZhiHuListBeanToJson(this);



}
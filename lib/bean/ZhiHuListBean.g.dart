// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ZhiHuListBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZhiHuListBean _$ZhiHuListBeanFromJson(Map<String, dynamic> json) {
  return ZhiHuListBean(
      date: json['date'] as String,
      news: (json['news'] as List)
          ?.map((e) => e == null
              ? null
              : ZhiHuNewsBean.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      is_today: json['is_today'] as bool,
      top_stories: (json['top_stories'] as List)
          ?.map((e) => e == null
              ? null
              : TopStoriesBean.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      display_date: json['display_date'] as String);
}

Map<String, dynamic> _$ZhiHuListBeanToJson(ZhiHuListBean instance) =>
    <String, dynamic>{
      'date': instance.date,
      'news': instance.news,
      'is_today': instance.is_today,
      'top_stories': instance.top_stories,
      'display_date': instance.display_date
    };

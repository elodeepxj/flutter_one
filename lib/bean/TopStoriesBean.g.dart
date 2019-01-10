// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TopStoriesBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopStoriesBean _$TopStoriesBeanFromJson(Map<String, dynamic> json) {
  return TopStoriesBean(
      image_source: json['image_source'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      image: json['image'] as String,
      share_url: json['share_url'] as String,
      ga_prefix: json['ga_prefix'] as String,
      id: json['id'] as int);
}

Map<String, dynamic> _$TopStoriesBeanToJson(TopStoriesBean instance) =>
    <String, dynamic>{
      'image_source': instance.image_source,
      'title': instance.title,
      'url': instance.url,
      'image': instance.image,
      'share_url': instance.share_url,
      'ga_prefix': instance.ga_prefix,
      'id': instance.id
    };

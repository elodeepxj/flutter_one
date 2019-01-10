// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ZhiHuNewsBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZhiHuNewsBean _$ZhiHuNewsBeanFromJson(Map<String, dynamic> json) {
  return ZhiHuNewsBean(
      title: json['title'] as String,
      url: json['url'] as String,
      image: json['image'] as String,
      share_url: json['share_url'] as String,
      thumbnail: json['thumbnail'] as String,
      ga_prefix: json['ga_prefix'] as String,
      id: json['id'] as int);
}

Map<String, dynamic> _$ZhiHuNewsBeanToJson(ZhiHuNewsBean instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'image': instance.image,
      'share_url': instance.share_url,
      'thumbnail': instance.thumbnail,
      'ga_prefix': instance.ga_prefix,
      'id': instance.id
    };

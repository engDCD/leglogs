// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rebrickable_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RebrickableSet _$RebrickableSetFromJson(Map<String, dynamic> json) =>
    RebrickableSet(
      setNum: json['set_num'] as String,
      name: json['name'] as String,
      year: json['year'] as int,
      themeId: json['theme_id'] as int,
      numParts: json['num_parts'] as int,
      setImgUrl: json['set_img_url'] as String,
      setUrl: json['set_url'] as String,
      lastModifiedDt: DateTime.parse(json['last_modified_dt'] as String),
    );

Map<String, dynamic> _$RebrickableSetToJson(RebrickableSet instance) =>
    <String, dynamic>{
      'set_num': instance.setNum,
      'name': instance.name,
      'year': instance.year,
      'theme_id': instance.themeId,
      'num_parts': instance.numParts,
      'set_img_url': instance.setImgUrl,
      'set_url': instance.setUrl,
      'last_modified_dt': instance.lastModifiedDt.toIso8601String(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rebrickable_set_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RebrickableSetCollection _$RebrickableSetCollectionFromJson(
        Map<String, dynamic> json) =>
    RebrickableSetCollection(
      count: json['count'] as int,
      next: json['next'] as String,
      results: (json['results'] as List<dynamic>)
          .map((e) => RebrickableSet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RebrickableSetCollectionToJson(
        RebrickableSetCollection instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'results': instance.results,
    };

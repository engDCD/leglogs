// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brickset_set_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BricksetSetCollection _$BricksetSetCollectionFromJson(
        Map<String, dynamic> json) =>
    BricksetSetCollection(
      status: json['status'] as String,
      matches: json['matches'] as int,
      sets: (json['sets'] as List<dynamic>)
          .map((e) => BricksetSet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BricksetSetCollectionToJson(
        BricksetSetCollection instance) =>
    <String, dynamic>{
      'status': instance.status,
      'matches': instance.matches,
      'sets': instance.sets,
    };

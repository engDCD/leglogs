import 'package:json_annotation/json_annotation.dart';

part 'rebrickable_set.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RebrickableSet {
  final String setNum;
  final String name;
  final int year;
  final int themeId;
  final int numParts;
  final String setImgUrl;
  final String setUrl;
  final DateTime lastModifiedDt;

  RebrickableSet(
      {required this.setNum,
      required this.name,
      required this.year,
      required this.themeId,
      required this.numParts,
      required this.setImgUrl,
      required this.setUrl,
      required this.lastModifiedDt});

  factory RebrickableSet.fromJson(Map<String, dynamic> json) =>
      _$RebrickableSetFromJson(json);
  Map<String, dynamic> toJson() => _$RebrickableSetToJson(this);
}

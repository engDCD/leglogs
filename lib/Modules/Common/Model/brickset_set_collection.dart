import 'package:json_annotation/json_annotation.dart';
import 'package:leglogs/Modules/Common/Model/brickset_set.dart';

part 'brickset_set_collection.g.dart';

@JsonSerializable()
class BricksetSetCollection {
  final String status;
  final int matches;
  final List<BricksetSet> sets;

  BricksetSetCollection({
    required this.status,
    required this.matches,
    required this.sets,
  });

  factory BricksetSetCollection.fromJson(Map<String, dynamic> json) =>
      _$BricksetSetCollectionFromJson(json);
  Map<String, dynamic> toJson() => _$BricksetSetCollectionToJson(this);
}

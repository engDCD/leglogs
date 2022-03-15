import 'package:json_annotation/json_annotation.dart';
import 'package:leglogs/Modules/Common/Model/rebrickable_base_collection.dart';
import 'package:leglogs/Modules/Common/Model/rebrickable_set.dart';

part 'rebrickable_set_collection.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RebrickableSetCollection
    extends RebrickableBaseCollection<RebrickableSet> {
  RebrickableSetCollection(
      {required int count,
      required String next,
      required List<RebrickableSet> results})
      : super(count: count, next: next, results: results);

  factory RebrickableSetCollection.fromJson(Map<String, dynamic> json) =>
      _$RebrickableSetCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$RebrickableSetCollectionToJson(this);
}

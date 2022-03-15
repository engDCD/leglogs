import 'package:json_annotation/json_annotation.dart';
import 'package:leglogs/Modules/Common/Mixin/palette_complements.dart';

part 'brickset_set.g.dart';

@JsonSerializable()
class BricksetSet with PaletteComplement {
  final int setID;
  final String number;
  final int numberVariant;
  final String name;
  final int year;
  final String theme;
  final String themeGroup;
  final String? subtheme;
  final String category;
  final bool released;
  final int? pieces;
  final int? minifigs;
  final BricksetImage image;
  final String bricksetURL;
  final BricksetCollection collection;
  final BricksetCollections collections;
  @JsonKey(name: 'LEGOCom')
  final BricksetLEGOCom legoCom;
  final double rating;
  final int reviewCount;
  final String packagingType;
  final String availability;
  final int instructionsCount;
  final int additionalImageCount;
  final BricksetAgeRange ageRange;
  final BricksetDimensions dimensions;
  final BricksetBarcode barcode;
  final BricksetExtendedData extendedData;
  final DateTime lastUpdated;

  BricksetSet({
    required this.setID,
    required this.number,
    required this.numberVariant,
    required this.name,
    required this.year,
    required this.theme,
    required this.themeGroup,
    this.subtheme,
    required this.category,
    required this.released,
    this.pieces,
    this.minifigs,
    required this.image,
    required this.bricksetURL,
    required this.collection,
    required this.collections,
    required this.legoCom,
    required this.rating,
    required this.reviewCount,
    required this.packagingType,
    required this.availability,
    required this.instructionsCount,
    required this.additionalImageCount,
    required this.ageRange,
    required this.dimensions,
    required this.barcode,
    required this.extendedData,
    required this.lastUpdated,
  });

  factory BricksetSet.fromJson(Map<String, dynamic> json) =>
      _$BricksetSetFromJson(json);
  Map<String, dynamic> toJson() => _$BricksetSetToJson(this);
}

@JsonSerializable()
class BricksetImage {
  final String? thumbnailURL;
  final String? imageURL;

  BricksetImage({
    this.thumbnailURL,
    this.imageURL,
  });

  factory BricksetImage.fromJson(Map<String, dynamic> json) =>
      _$BricksetImageFromJson(json);
  Map<String, dynamic> toJson() => _$BricksetImageToJson(this);
}

@JsonSerializable()
class BricksetCollection {
  final bool owned;
  final bool wanted;
  final int qtyOwned;
  final int rating;
  final String notes;

  BricksetCollection({
    required this.owned,
    required this.wanted,
    required this.qtyOwned,
    required this.rating,
    required this.notes,
  });

  factory BricksetCollection.fromJson(Map<String, dynamic> json) =>
      _$BricksetCollectionFromJson(json);
  Map<String, dynamic> toJson() => _$BricksetCollectionToJson(this);
}

@JsonSerializable()
class BricksetCollections {
  final int? ownedBy;
  final int? wantedBy;

  BricksetCollections({
    this.ownedBy,
    this.wantedBy,
  });

  factory BricksetCollections.fromJson(Map<String, dynamic> json) =>
      _$BricksetCollectionsFromJson(json);
  Map<String, dynamic> toJson() => _$BricksetCollectionsToJson(this);
}

@JsonSerializable()
class BricksetLEGOCom {
  @JsonKey(name: 'US')
  final BricksetLEGOComDetail us;
  @JsonKey(name: 'UK')
  final BricksetLEGOComDetail uk;
  @JsonKey(name: 'CA')
  final BricksetLEGOComDetail ca;
  @JsonKey(name: 'DE')
  final BricksetLEGOComDetail de;

  BricksetLEGOCom({
    required this.us,
    required this.uk,
    required this.ca,
    required this.de,
  });

  factory BricksetLEGOCom.fromJson(Map<String, dynamic> json) =>
      _$BricksetLEGOComFromJson(json);
  Map<String, dynamic> toJson() => _$BricksetLEGOComToJson(this);
}

@JsonSerializable()
class BricksetLEGOComDetail {
  final double? retailPrice;
  final DateTime? dateFirstAvailable;
  final DateTime? dateLastAvailable;

  BricksetLEGOComDetail({
    this.retailPrice,
    this.dateFirstAvailable,
    this.dateLastAvailable,
  });

  factory BricksetLEGOComDetail.fromJson(Map<String, dynamic> json) =>
      _$BricksetLEGOComDetailFromJson(json);
  Map<String, dynamic> toJson() => _$BricksetLEGOComDetailToJson(this);
}

@JsonSerializable()
class BricksetAgeRange {
  final int? min;
  final int? max;

  BricksetAgeRange({
    this.min,
    this.max,
  });

  factory BricksetAgeRange.fromJson(Map<String, dynamic> json) =>
      _$BricksetAgeRangeFromJson(json);
  Map<String, dynamic> toJson() => _$BricksetAgeRangeToJson(this);
}

@JsonSerializable()
class BricksetDimensions {
  final double? height;
  final double? width;
  final double? depth;
  final double? weight;

  BricksetDimensions({
    this.height,
    this.width,
    this.depth,
    this.weight,
  });

  factory BricksetDimensions.fromJson(Map<String, dynamic> json) =>
      _$BricksetDimensionsFromJson(json);
  Map<String, dynamic> toJson() => _$BricksetDimensionsToJson(this);
}

@JsonSerializable()
class BricksetBarcode {
  @JsonKey(name: 'EAN')
  final String? ean;
  @JsonKey(name: 'UPC')
  final String? upc;

  BricksetBarcode({
    this.ean,
    this.upc,
  });

  factory BricksetBarcode.fromJson(Map<String, dynamic> json) =>
      _$BricksetBarcodeFromJson(json);
  Map<String, dynamic> toJson() => _$BricksetBarcodeToJson(this);
}

@JsonSerializable()
class BricksetExtendedData {
  final String? notes;
  final List<String>? tags;
  final String? description;

  BricksetExtendedData({
    this.notes,
    this.tags,
    this.description,
  });

  factory BricksetExtendedData.fromJson(Map<String, dynamic> json) =>
      _$BricksetExtendedDataFromJson(json);
  Map<String, dynamic> toJson() => _$BricksetExtendedDataToJson(this);
}

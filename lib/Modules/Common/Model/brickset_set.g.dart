// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brickset_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BricksetSet _$BricksetSetFromJson(Map<String, dynamic> json) => BricksetSet(
      setID: json['setID'] as int,
      number: json['number'] as String,
      numberVariant: json['numberVariant'] as int,
      name: json['name'] as String,
      year: json['year'] as int,
      theme: json['theme'] as String,
      themeGroup: json['themeGroup'] as String,
      subtheme: json['subtheme'] as String?,
      category: json['category'] as String,
      released: json['released'] as bool,
      pieces: json['pieces'] as int?,
      minifigs: json['minifigs'] as int?,
      image: BricksetImage.fromJson(json['image'] as Map<String, dynamic>),
      bricksetURL: json['bricksetURL'] as String,
      collection: BricksetCollection.fromJson(
          json['collection'] as Map<String, dynamic>),
      collections: BricksetCollections.fromJson(
          json['collections'] as Map<String, dynamic>),
      legoCom:
          BricksetLEGOCom.fromJson(json['LEGOCom'] as Map<String, dynamic>),
      rating: (json['rating'] as num).toDouble(),
      reviewCount: json['reviewCount'] as int,
      packagingType: json['packagingType'] as String,
      availability: json['availability'] as String,
      instructionsCount: json['instructionsCount'] as int,
      additionalImageCount: json['additionalImageCount'] as int,
      ageRange:
          BricksetAgeRange.fromJson(json['ageRange'] as Map<String, dynamic>),
      dimensions: BricksetDimensions.fromJson(
          json['dimensions'] as Map<String, dynamic>),
      barcode:
          BricksetBarcode.fromJson(json['barcode'] as Map<String, dynamic>),
      extendedData: BricksetExtendedData.fromJson(
          json['extendedData'] as Map<String, dynamic>),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$BricksetSetToJson(BricksetSet instance) =>
    <String, dynamic>{
      'setID': instance.setID,
      'number': instance.number,
      'numberVariant': instance.numberVariant,
      'name': instance.name,
      'year': instance.year,
      'theme': instance.theme,
      'themeGroup': instance.themeGroup,
      'subtheme': instance.subtheme,
      'category': instance.category,
      'released': instance.released,
      'pieces': instance.pieces,
      'minifigs': instance.minifigs,
      'image': instance.image,
      'bricksetURL': instance.bricksetURL,
      'collection': instance.collection,
      'collections': instance.collections,
      'LEGOCom': instance.legoCom,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'packagingType': instance.packagingType,
      'availability': instance.availability,
      'instructionsCount': instance.instructionsCount,
      'additionalImageCount': instance.additionalImageCount,
      'ageRange': instance.ageRange,
      'dimensions': instance.dimensions,
      'barcode': instance.barcode,
      'extendedData': instance.extendedData,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };

BricksetImage _$BricksetImageFromJson(Map<String, dynamic> json) =>
    BricksetImage(
      thumbnailURL: json['thumbnailURL'] as String?,
      imageURL: json['imageURL'] as String?,
    );

Map<String, dynamic> _$BricksetImageToJson(BricksetImage instance) =>
    <String, dynamic>{
      'thumbnailURL': instance.thumbnailURL,
      'imageURL': instance.imageURL,
    };

BricksetCollection _$BricksetCollectionFromJson(Map<String, dynamic> json) =>
    BricksetCollection(
      owned: json['owned'] as bool,
      wanted: json['wanted'] as bool,
      qtyOwned: json['qtyOwned'] as int,
      rating: json['rating'] as int,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$BricksetCollectionToJson(BricksetCollection instance) =>
    <String, dynamic>{
      'owned': instance.owned,
      'wanted': instance.wanted,
      'qtyOwned': instance.qtyOwned,
      'rating': instance.rating,
      'notes': instance.notes,
    };

BricksetCollections _$BricksetCollectionsFromJson(Map<String, dynamic> json) =>
    BricksetCollections(
      ownedBy: json['ownedBy'] as int?,
      wantedBy: json['wantedBy'] as int?,
    );

Map<String, dynamic> _$BricksetCollectionsToJson(
        BricksetCollections instance) =>
    <String, dynamic>{
      'ownedBy': instance.ownedBy,
      'wantedBy': instance.wantedBy,
    };

BricksetLEGOCom _$BricksetLEGOComFromJson(Map<String, dynamic> json) =>
    BricksetLEGOCom(
      us: BricksetLEGOComDetail.fromJson(json['US'] as Map<String, dynamic>),
      uk: BricksetLEGOComDetail.fromJson(json['UK'] as Map<String, dynamic>),
      ca: BricksetLEGOComDetail.fromJson(json['CA'] as Map<String, dynamic>),
      de: BricksetLEGOComDetail.fromJson(json['DE'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BricksetLEGOComToJson(BricksetLEGOCom instance) =>
    <String, dynamic>{
      'US': instance.us,
      'UK': instance.uk,
      'CA': instance.ca,
      'DE': instance.de,
    };

BricksetLEGOComDetail _$BricksetLEGOComDetailFromJson(
        Map<String, dynamic> json) =>
    BricksetLEGOComDetail(
      retailPrice: (json['retailPrice'] as num?)?.toDouble(),
      dateFirstAvailable: json['dateFirstAvailable'] == null
          ? null
          : DateTime.parse(json['dateFirstAvailable'] as String),
      dateLastAvailable: json['dateLastAvailable'] == null
          ? null
          : DateTime.parse(json['dateLastAvailable'] as String),
    );

Map<String, dynamic> _$BricksetLEGOComDetailToJson(
        BricksetLEGOComDetail instance) =>
    <String, dynamic>{
      'retailPrice': instance.retailPrice,
      'dateFirstAvailable': instance.dateFirstAvailable?.toIso8601String(),
      'dateLastAvailable': instance.dateLastAvailable?.toIso8601String(),
    };

BricksetAgeRange _$BricksetAgeRangeFromJson(Map<String, dynamic> json) =>
    BricksetAgeRange(
      min: json['min'] as int?,
      max: json['max'] as int?,
    );

Map<String, dynamic> _$BricksetAgeRangeToJson(BricksetAgeRange instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

BricksetDimensions _$BricksetDimensionsFromJson(Map<String, dynamic> json) =>
    BricksetDimensions(
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      depth: (json['depth'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BricksetDimensionsToJson(BricksetDimensions instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'depth': instance.depth,
      'weight': instance.weight,
    };

BricksetBarcode _$BricksetBarcodeFromJson(Map<String, dynamic> json) =>
    BricksetBarcode(
      ean: json['EAN'] as String?,
      upc: json['UPC'] as String?,
    );

Map<String, dynamic> _$BricksetBarcodeToJson(BricksetBarcode instance) =>
    <String, dynamic>{
      'EAN': instance.ean,
      'UPC': instance.upc,
    };

BricksetExtendedData _$BricksetExtendedDataFromJson(
        Map<String, dynamic> json) =>
    BricksetExtendedData(
      notes: json['notes'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$BricksetExtendedDataToJson(
        BricksetExtendedData instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'tags': instance.tags,
      'description': instance.description,
    };

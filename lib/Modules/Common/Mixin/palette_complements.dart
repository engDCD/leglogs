import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:palette_generator/palette_generator.dart';

mixin PaletteComplement {
  @JsonKey(ignore: true)
  PaletteGenerator? palette;

  bool isDarkColor(Color refColor) {
    return (refColor.computeLuminance() < 0.179);
  }

  Future<void> loadfromImage(String? url) async {
    palette = url != null
        ? await PaletteGenerator.fromImageProvider(
            Image.network(
              url,
              fit: BoxFit.contain,
            ).image,
            maximumColorCount: 10,
          )
        : PaletteGenerator.fromColors([PaletteColor(Colors.transparent, 10)]);
  }
}

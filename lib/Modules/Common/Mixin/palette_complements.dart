import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

mixin PaletteComplement {
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

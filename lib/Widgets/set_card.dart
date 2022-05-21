import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';
import 'package:leglogs/Modules/Common/Model/brickset_set.dart';
import 'package:leglogs/Modules/Set/set_view.dart';
import 'package:widget_mask/widget_mask.dart';

class SetCard extends StatelessWidget {
  final BricksetSet set;

  const SetCard({Key? key, required this.set}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? dominantColor = set.palette?.dominantColor?.color;
    Color fontColor = set.isDarkColor(dominantColor ?? Colors.transparent)
        ? Colors.white
        : Colors.black;

    AutoSizeGroup medGroup = AutoSizeGroup();
    AutoSizeGroup bigGroup = AutoSizeGroup();

    return InkWell(
      onTap: () => Get.toNamed(SetView.routeName),
      child: Card(
        color: dominantColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: LayoutBuilder(
                        builder: (context, constraints) => Visibility(
                          visible: constraints.maxHeight > 16,
                          child: Image.asset(
                            'assets/images/lego_logo.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    AutoSizeText(
                      set.theme,
                      maxLines: 1,
                      minFontSize: 4,
                      maxFontSize: 16,
                      group: medGroup,
                      style: TextStyle(color: fontColor),
                    ),
                    const Spacer(),
                    AutoSizeText(
                      '${set.ageRange.min ?? 0}+',
                      maxLines: 1,
                      minFontSize: 12,
                      maxFontSize: 18,
                      group: bigGroup,
                      style: TextStyle(fontSize: 18, color: fontColor),
                    ),
                    Divider(
                      color: fontColor,
                    ),
                    AutoSizeText(
                      set.number,
                      maxLines: 1,
                      minFontSize: 4,
                      maxFontSize: 16,
                      group: medGroup,
                      style: TextStyle(color: fontColor),
                    ),
                    Divider(
                      color: fontColor,
                    ),
                    AutoSizeText(
                      set.pieces.toString(),
                      maxLines: 1,
                      minFontSize: 12,
                      maxFontSize: 18,
                      group: bigGroup,
                      style: TextStyle(fontSize: 18, color: fontColor),
                    ),
                    AutoSizeText(
                      'pcs/pzs',
                      maxLines: 1,
                      minFontSize: 4,
                      maxFontSize: 16,
                      group: medGroup,
                      style: TextStyle(color: fontColor),
                    ),
                    Divider(
                      color: fontColor,
                    ),
                    AutoSizeText(
                      set.name,
                      maxLines: 2,
                      minFontSize: 4,
                      maxFontSize: 12,
                      style: TextStyle(color: fontColor),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: LayoutBuilder(builder: (context, ctrs) {
                return WidgetMask(
                  blendMode: BlendMode.srcIn,
                  childSaveLayer: true,
                  mask: set.image.imageURL != null
                      ? Container(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(
                                ((ctrs.maxWidth / ctrs.maxHeight) - 1) * 200),
                            child: Image.network(
                              set.image.imageURL!,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        )
                      : Container(),
                  child: Image.asset(
                    'assets/masks/mask3.png',
                    fit: BoxFit.fill,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:leglogs/Modules/Common/Model/brickset_set.dart';
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

    return Card(
      color: dominantColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${set.ageRange.min ?? 0}+',
                    style: TextStyle(fontSize: 40, color: fontColor),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  Text(
                    set.number,
                    style: TextStyle(fontSize: 18, color: fontColor),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  Text(
                    set.pieces.toString(),
                    style: TextStyle(fontSize: 30, color: fontColor),
                  ),
                  Text(
                    'pcs/pzs',
                    style: TextStyle(fontSize: 21, color: fontColor),
                  ),
                  const Divider(color: Colors.black),
                  Text(
                    set.name,
                    style: TextStyle(color: fontColor),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: WidgetMask(
              blendMode: BlendMode.srcIn,
              childSaveLayer: true,
              mask: set.image.imageURL != null
                  ? Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(80.0),
                        child: Image.network(
                          set.image.imageURL!,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    )
                  : Container(),
              child: Image.asset('assets/masks/mask3.png'),
            ),
          ),
        ],
      ),
    );
  }
}

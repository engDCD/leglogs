import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:leglogs/Modules/Common/Model/brickset_set_collection.dart';
import 'package:darq/darq.dart';

class SetCollectionSummaryBar extends StatelessWidget {
  final BricksetSetCollection setCollection;

  const SetCollectionSummaryBar({Key? key, required this.setCollection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoSizeGroup sizeGroup = AutoSizeGroup();

    return Container(
      color: Colors.black38,
      height: kToolbarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox.square(
            dimension: 40,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Image.asset(
                'assets/images/lego_set2.png',
              ),
            ),
          ),
          Expanded(
            child: AutoSizeText(
              '${setCollection.matches}',
              maxLines: 1,
              group: sizeGroup,
            ),
          ),
          const VerticalDivider(
            color: Colors.white,
            indent: 10,
            endIndent: 10,
          ),
          SizedBox.square(
            dimension: 32,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Image.asset(
                'assets/images/lego_minifigure.png',
              ),
            ),
          ),
          Expanded(
            child: AutoSizeText(
              '${setCollection.sets?.sum((x) => x.minifigs ?? 0)}',
              maxLines: 1,
              group: sizeGroup,
            ),
          ),
          const VerticalDivider(
            color: Colors.white,
            indent: 10,
            endIndent: 10,
          ),
          SizedBox.square(
            dimension: 28,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Image.asset(
                'assets/images/lego_brick.png',
              ),
            ),
          ),
          Expanded(
            child: AutoSizeText(
              '${setCollection.sets?.sum((x) => x.pieces ?? 0)}',
              maxLines: 1,
              group: sizeGroup,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

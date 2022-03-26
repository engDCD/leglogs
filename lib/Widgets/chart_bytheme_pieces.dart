import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:darq/darq.dart';
import 'package:leglogs/Modules/Common/Model/brickset_set.dart';
import 'package:leglogs/Modules/Common/Model/brickset_set_collection.dart';

class _ChartByThemeXPicesData {
  final String theme;
  final List<_ChartByThemeXPicesItem> items;

  _ChartByThemeXPicesData({
    required this.theme,
    required this.items,
  });
}

class _ChartByThemeXPicesItem {
  final int setID;
  final int pieces;
  final Color color;

  _ChartByThemeXPicesItem({
    required this.setID,
    required this.pieces,
    required this.color,
  });
}

class ChartByThemeXPieces extends StatelessWidget {
  final List<charts.Series<_ChartByThemeXPicesItem, String>> seriesList;
  final bool animate;

  const ChartByThemeXPieces(
      {Key? key, required this.seriesList, this.animate = false})
      : super(key: key);

  factory ChartByThemeXPieces.fromCollection({
    required BricksetSetCollection collection,
  }) {
    List<BricksetSet> sets = collection.sets ?? [];

    var chartData = sets
        .orderBy((element) => element.theme)
        .groupBy((element) => element.theme)
        .select((g, index) => _ChartByThemeXPicesData(
              theme: g.key,
              items: g.elements
                  .map((e) => _ChartByThemeXPicesItem(
                        setID: e.setID,
                        pieces: e.pieces ?? 0,
                        color: e.palette?.dominantColor?.color ?? Colors.black,
                      ))
                  .toList(),
            ))
        .toList();

    var serieList = chartData
        .map(
          (themeData) => charts.Series<_ChartByThemeXPicesItem, String>(
            id: themeData.theme,
            domainFn: (_ChartByThemeXPicesItem item, _) => themeData.theme,
            measureFn: (_ChartByThemeXPicesItem item, _) => item.pieces,
            colorFn: (_ChartByThemeXPicesItem item, _) =>
                charts.ColorUtil.fromDartColor(item.color),
            data: themeData.items.orderBy((element) => element.pieces).toList(),
            labelAccessorFn: (_ChartByThemeXPicesItem item, index) => index ==
                    themeData.items.count() - 1
                ? '${themeData.theme} (${themeData.items.sum((e) => e.pieces)})'
                : '',
          ),
        )
        .toList();

    return ChartByThemeXPieces(
      seriesList: serieList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const Text('Sets x Themes x Pieces'),
          Expanded(
            child: charts.BarChart(
              seriesList,
              animate: animate,
              barGroupingType: charts.BarGroupingType.stacked,
              vertical: false,
              barRendererDecorator: charts.BarLabelDecorator<String>(),
              primaryMeasureAxis: const charts.NumericAxisSpec(
                tickProviderSpec:
                    charts.BasicNumericTickProviderSpec(desiredTickCount: 5),
              ),
              domainAxis: const charts.OrdinalAxisSpec(
                  renderSpec: charts.NoneRenderSpec()),
            ),
          ),
        ],
      ),
    );
  }
}

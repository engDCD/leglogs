import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:leglogs/Modules/Common/Model/brickset_set.dart';
import 'package:leglogs/Modules/Common/Model/brickset_set_collection.dart';
import 'package:darq/darq.dart';

class _ChartByThemeData {
  final String theme;
  final int count;
  final Color color;

  _ChartByThemeData(
      {required this.theme, required this.count, required this.color});
}

class ChartByTheme extends StatelessWidget {
  final List<charts.Series<_ChartByThemeData, String>> seriesList;
  final bool animate;

  const ChartByTheme({
    Key? key,
    required this.seriesList,
    this.animate = false,
  }) : super(key: key);

  factory ChartByTheme.fromCollection({
    required BricksetSetCollection collection,
  }) {
    List<BricksetSet> sets = collection.sets ?? [];

    var chartData = sets
        .orderBy((element) => element.theme)
        .groupBy((element) => element.theme)
        .select((g, index) => _ChartByThemeData(
            theme: g.key,
            count: g.count,
            color: g.last.palette?.vibrantColor?.color ?? Colors.black))
        .toList();

    var serieList = [
      charts.Series<_ChartByThemeData, String>(
        id: 'Themes',
        domainFn: (_ChartByThemeData group, _) => group.theme,
        measureFn: (_ChartByThemeData group, _) => group.count,
        colorFn: (_ChartByThemeData group, _) =>
            charts.ColorUtil.fromDartColor(group.color),
        data: chartData,
        labelAccessorFn: (_ChartByThemeData group, _) =>
            '${group.theme} (${(group.count)})',
      )
    ];

    return ChartByTheme(
      seriesList: serieList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const Text('Sets x Themes'),
          Expanded(
            child: charts.BarChart(
              seriesList,
              animate: animate,
              vertical: false,
              barRendererDecorator: charts.BarLabelDecorator<String>(),
              domainAxis: const charts.OrdinalAxisSpec(
                  renderSpec: charts.NoneRenderSpec()),
            ),
          ),
        ],
      ),
    );
  }
}

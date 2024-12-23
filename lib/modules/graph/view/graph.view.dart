import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:untitled/modules/graph/controller/graph.controller.dart';
import 'package:untitled/utils/assets.utils.dart';

class GraphView extends StatelessWidget {
  GraphView({super.key});

  final GraphController graphController = GraphController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsUtils.getLogo(),
              height: 42,
              width: 42,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          SfCartesianChart(
            primaryXAxis: const CategoryAxis(),
            title: const ChartTitle(text: "Half yearly sales analysis"),
            legend: const Legend(isVisible: true),
            tooltipBehavior: TooltipBehavior(enable: true),
            series: [
              LineSeries(
                name: 'Youtube',
                dataSource: graphController.data1,
                xValueMapper: (datum, index) => datum.year,
                yValueMapper: (datum, index) => datum.sales,
              ),
              LineSeries(
                name: 'Facebook',
                dataSource: graphController.data2,
                xValueMapper: (datum, index) => datum.year,
                yValueMapper: (datum, index) => datum.sales,
              )
            ],
          ),
          SfSparkLineChart.custom(
            //Enable the trackball
            trackball: const SparkChartTrackball(
                activationMode: SparkChartActivationMode.tap),
            //Enable marker
            marker: const SparkChartMarker(
                displayMode: SparkChartMarkerDisplayMode.high),
            //Enable data label
            labelDisplayMode: SparkChartLabelDisplayMode.all,
            xValueMapper: (int index) => graphController.data1[index].year,
            yValueMapper: (int index) => graphController.data1[index].sales,
            dataCount: 5,
          ),
          SfCircularChart(
            legend: const Legend(isVisible: true),
            title: const ChartTitle(text: "Youtube Spend Analysis 1"),
            series: [
              // PieSeries(
              //   explode: true,
              //   dataSource: graphController.data2,
              //   xValueMapper: (datum, index) => datum.year,
              //   yValueMapper: (datum, index) => datum.sales,
              // ),
              DoughnutSeries(
                explode: true,
                name: 'Youtube',
                legendIconType: LegendIconType.circle,
                dataSource: graphController.data1,
                xValueMapper: (datum, index) => datum.year,
                yValueMapper: (datum, index) => datum.sales,
              ),
            ],
          ),
          SfCircularChart(
            legend: const Legend(isVisible: true),
            title: const ChartTitle(text: "Youtube Spend Analysis 2"),
            series: [
              PieSeries(
                explode: true,
                dataSource: graphController.data2,
                xValueMapper: (datum, index) => datum.year,
                yValueMapper: (datum, index) => datum.sales,
              ),
            ],
          ),
          SfPyramidChart(
            title: const ChartTitle(text: "Meta Ads"),
            series: PyramidSeries(
              pyramidMode: PyramidMode.surface,
              dataSource: graphController.data2,
              xValueMapper: (datum, index) => datum.year,
              yValueMapper: (datum, index) => datum.sales,
            ),
          ),
          SfFunnelChart(
            title: const ChartTitle(text: 'Reels Expense'),
            series: FunnelSeries(
              dataSource: graphController.data1,
              xValueMapper: (datum, index) => datum.year,
              yValueMapper: (datum, index) => datum.sales,
            ),
          ),
          SfSparkAreaChart.custom(
            dataCount: graphController.data2.length,
            xValueMapper: (index) => graphController.data2[index].year,
            yValueMapper: (index) => graphController.data2[index].sales,
          ),
          SfSparkBarChart(
            data: const [1, 3, 5, 6, 7, 1],
          ),
          SfSparkWinLossChart(
            data: [1, 4],
            plotBand: SparkChartPlotBand(),
            axisCrossesAt: 1,
          )
        ],
      ),
    );
  }
}

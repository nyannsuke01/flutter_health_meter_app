import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  labelText: '体重を入力してください'
              ),
            ),
            Text( '2020年7月の体重の変化' ),
            Expanded(flex: 1,
                child: Card(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: SimpleTimeSeriesChart.withSampleData()
                    )
                )
            ),

          ],
        ),
      ),
    );
  }
}

class SimpleTimeSeriesChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleTimeSeriesChart(this.seriesList, {this.animate});

  factory SimpleTimeSeriesChart.withSampleData() {
    return new SimpleTimeSeriesChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.TimeSeriesChart(
      seriesList,
      animate: animate,
      dateTimeFactory: const charts.LocalDateTimeFactory(),
    );
  }

  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData() {
    final data = [
      new TimeSeriesSales(new DateTime(2020, 7, 1), 69),
      new TimeSeriesSales(new DateTime(2020, 7, 4), 67),
      new TimeSeriesSales(new DateTime(2020, 7, 7), 68),
      new TimeSeriesSales(new DateTime(2020, 7, 10), 65),
      new TimeSeriesSales(new DateTime(2020, 7, 13), 64),
      new TimeSeriesSales(new DateTime(2020, 7, 16), 60),
      new TimeSeriesSales(new DateTime(2020, 7, 19), 55),
    ];

    return [
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }

}

class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
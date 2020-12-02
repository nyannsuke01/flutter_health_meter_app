import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

import '../components/side_drawer.dart';

class Graph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(

        title: Text('実績データ',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          FlatButton(

            child: Icon(
              Icons.add_alert,
              color: Colors.white,
            ),
            onPressed: (){
              showAboutDialog(
                context: context,
                applicationIcon: Icon(Icons.add_alert),
                applicationName: "通知画面",
                applicationVersion: "2.0.1",
                applicationLegalese: "通知設定画面へ移動することを想定しています",
              );
            },
          ),
          FlatButton(
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: (){
              showAboutDialog(
                context: context,
                applicationIcon: Icon(Icons.person),
                applicationName: "ユーザー画面",
                applicationVersion: "2.0.1",
                applicationLegalese: "対象ユーザー様の情報を表示するページへ遷移します",
              );
            },
          ),
        ],
      ),
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
      drawer: SlideDrawer(),
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
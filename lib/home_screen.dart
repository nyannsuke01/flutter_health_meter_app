import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_app/components/side_drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('ホーム'),
        actions: [
          FlatButton(
            child: Icon(Icons.add_alert),
            onPressed: (){

            },
          ),
          FlatButton(
            child: Icon(Icons.person),
            onPressed: (){

            },
          ),
        ],
      ),
      //drawer
      // body:
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline5,
            ),
          );
        }),
      ),
      drawer: SideDrawer(),

      // new Slider(key: null, onChanged: sliderChanged, value:0.35,),
    );
  }
  // void sliderChanged(double value) {}
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
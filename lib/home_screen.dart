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
      //drawer
      // body:
      body: HomeWidget(),
      drawer: SlideDrawer(),

      // new Slider(key: null, onChanged: sliderChanged, value:0.35,),
    );
  }
  // void sliderChanged(double value) {}
}

/// This is the stateless widget that the main application instantiates.
class HomeWidget extends StatelessWidget {
  HomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(10.0),
              child: Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 150,
                  height: 150,
                  child: Text(
                    '今月の体重進捗',
                    style: TextStyle(fontSize: 18),
                  )

              ),

            ),
            Card(
              margin: const EdgeInsets.all(10.0),
              child: Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 150,
                  height: 150,

                  child: Text(
                    '今月のトラッキング',
                    style: TextStyle(fontSize: 15),
                  )
              ),
            ),
          ],
        )

    );
  }
}
// return Card(
//       elevation: 8.0,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//
//       child: Card(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             const ListTile(
//               title: Text('筋トレ'),
//               leading: Icon(Icons.album),
//               subtitle: Text('30分'),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 RaisedButton(
//                   child: const Text('✔︎'),
//                   textColor: Colors.green,
//                   color: Colors.white,
//                   shape: const CircleBorder(
//                     side: BorderSide(
//                       color: Colors.green,
//                       width: 5,
//                       style: BorderStyle.solid,
//                     ),
//                   ),
//                   onPressed: () {
//                   },
//                   highlightElevation: 16,
//                   highlightColor: Colors.green,
//                   onHighlightChanged: (value) {},
//                 ),
//                 RaisedButton(
//                   child: const Text('✖️'),
//                   textColor: Colors.green,
//                   color: Colors.white,
//                   shape: const CircleBorder(
//                     side: BorderSide(
//                       color: Colors.green,
//                       width: 5,
//                       style: BorderStyle.solid,
//                     ),
//                   ),
//                   onPressed: () {},
//                 ),
//                 const SizedBox(width: 8),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
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
      body: MyStatelessWidget(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'メニュー',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('食事の登録'),
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('食事データ確認'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('計測項目登録'),
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('計測項目測定'),
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('コメント一覧'),
              onTap: () {

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // new Slider(key: null, onChanged: sliderChanged, value:0.35,),
    );
  }
  // void sliderChanged(double value) {}
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
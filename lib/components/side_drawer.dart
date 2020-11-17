import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<SideDrawer> {
  var contents_menu = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Drawer Test'),
        ),
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
                  color: Colors.pink,
                ),
              ),
              ListTile(
                title: Text('食事の登録'),
                onTap: () {
                  setState(() => contents_menu = '食事の登録');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('食事データ確認'),
                onTap: () {
                  setState(() => contents_menu = '食事データの確認');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('計測項目登録'),
                onTap: () {
                  setState(() => contents_menu = '計測項目登録');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('計測項目測定'),
                onTap: () {
                  setState(() => contents_menu = '計測項目測定');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('コメント一覧'),
                onTap: () {
                  setState(() => contents_menu = 'コメント一覧');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Text(
            contents_menu,
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        ));
  }
}
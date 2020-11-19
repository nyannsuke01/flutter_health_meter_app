import 'package:flutter/material.dart';

class SlideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}

import 'package:flutter/material.dart';
import 'components/side_drawer.dart';

class MailDetail extends StatelessWidget {

  final String title;
  MailDetail(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("メッセージ表示"),
        actions: [
          FlatButton(
            child: Icon(
              Icons.add_alert,
              color: Colors.white,
            ),
            onPressed: (){

            },
          ),
          FlatButton(
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: (){

            },
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.mark_email_read),
            title: Text(this.title),
          ),
        ],
      ),
    );
  }


}
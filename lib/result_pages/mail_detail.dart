import 'package:flutter/material.dart';
import '../components/side_drawer.dart';

class MailDetail extends StatelessWidget {

  final String title;
  MailDetail(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("メッセージ表示",
          style: TextStyle(color: Colors.white),
        ),
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
          ListTile(
            title: Text("おはようございます。吉田です。モチベーションの維持は難しいかと思います。私自身もブレブレの時もあれば、集中して取り組める時もあります。　　集中は一瞬でも大丈夫です！頑張ってどんどん尖っていきましょう！"
                "食べた分は運動するためのエネルギーとして消費していきましょう！"),
          ),
        ],


      ),
    );
  }


}
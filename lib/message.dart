
import 'package:flutter/material.dart';
import 'package:flutter_app/mail_detail.dart';
import 'components/side_drawer.dart';

class Message extends StatelessWidget {
  int _counter = 0;
  List<String> titlelList = ["返信遅くなりました","吉田です","昨日より今日の方が元気な吉田です","おはようございます。吉田です","筋肉痛、素晴らしいですね"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(

        title: Text('メッセージ'),
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
      body: ListView.builder(
        itemCount: titlelList.length,
        itemBuilder: (BuildContext context, int index){
          return Column(
            children: [
              ListTile(
                leading: Icon(Icons.mail_outline),
                title: Text(titlelList[index]),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MailDetail(titlelList[index])),
                  );
                },
              ),
              Divider(),
            ],
          );
        }
      ),

      drawer: SlideDrawer(),
    );
  }
}




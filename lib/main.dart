
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());
// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  Web(cmd)async{
    print(cmd);
    var url = 'http://192.168.43.21/cgi-bin/${cmd}.py';
    var r= await http.get(url);
    print(r.body);
  }
  String x;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold
    (appBar: AppBar
    (title: Text('LW')
    ),
    body: Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:20),
        width: 300,
        height: 200,
        color: Colors.grey,
        child: Column(
          children: <Widget>[
            Card(
              child: TextField(onChanged: (val){
                x = val;
              },),
            ),
            Card(
              child: FlatButton(
              onPressed: (){
               // print(x);
               Web(x);
              },
              child: Text('Submit')
              ),
            ),
          ]
        ),
      ),
    ),
    ),
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    
    Widget titleAction = Container(
      padding: const EdgeInsets.all(10.0), // padding all app
      child: new Row(
        children: <Widget>[
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text('Im am alone', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              ),
              Text('This is my voide in 1 month', style: TextStyle(fontSize: 18.0, color: Colors.grey[600])),
            ],
          )),
          Icon(Icons.favorite, color: Colors.red,),
          Text(" 100")
        ],
      ),
    );

    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset('images/10.png', fit: BoxFit.cover),
            titleAction,
          ],
        ),
      ),
    );
  }
}
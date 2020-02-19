import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial Navigation',
    home: FirstPgae(),
  ));
}

class FirstPgae extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo 2'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Click to fly"),
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
              // change page with route
              Navigator.pushNamed(context, '/second');
          }),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2")
      ),
      body: Center(
        child: RaisedButton(onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Go back!'),
        ),
      ),
    );
  }
}
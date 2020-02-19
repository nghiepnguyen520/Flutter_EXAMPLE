// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MainPage extends StatefulWidget {
  final String title;
  //ke thua tu class cha va them 1 thuoc tinh title
  MainPage({this.title}) : super();
  @override
  //class statefull thi can quan ly state va tra ve 1 Widget State
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainPageState();
  }
}

List<Widget> _buildItemGrid(numberOfTitles) {
  List<Stack> container = List<Stack>.generate(numberOfTitles, (int index) {
    final imageName = 'images/${index+1}.png';
    return Stack(
      //  alignment: const Alignment(-1.0, -1.0),
       alignment: const Alignment(1.0, 1.0),
      // alignment: const Alignment(0.0, 0.0),
      children: <Widget>[
        Container(
          child: Image.asset(imageName, fit: BoxFit.fill, width: 200.0, height: 200.0,),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(color: Color.fromARGB(150, 71, 150, 236)),
          child: Text( "${index + 1}",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          )
        ),
        )
      ],
    );
  });
  return container;
}

class MainPageState extends State<MainPage>{ 
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
          padding: const EdgeInsets.all(5.0),
          children: _buildItemGrid(11),
        ),
      );
    }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: new MainPage(title: 'List Images')
    );
  }
}
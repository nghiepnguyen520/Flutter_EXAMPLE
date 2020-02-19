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
  List<Container> container = List<Container>.generate(numberOfTitles, (int index) {
    final imageName = 'images/${index+1}.png';
    return Container(
      child: Image.asset(imageName, fit: BoxFit.fill),
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
      );;
    }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: new MainPage(title: 'Statefulwidget')
    );
  }
}
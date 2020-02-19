// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  //global key tu sinh cho widget 1 cai key
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  _showSnackBar () {
    final snackBar = SnackBar(content: Text("this is context important"), 
    duration: Duration(seconds: 3),
    backgroundColor: Colors.blue,
    action: SnackBarAction(label: 'Oke',textColor: Colors.white, onPressed: (){
      print("object");
    },),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Snackbar off Flutter'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.notification_important), onPressed: _showSnackBar)
          ],
        ),
        body: Center(
          child: Text('Hello World Nghiep Nguyen'),
        ),
      ),
    );
  }
}
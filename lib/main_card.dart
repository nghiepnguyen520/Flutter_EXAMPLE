// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_box, color: Colors.blue, size: 26.0,),
            title:  Text('Nguyen Quoc Nghiep'),
            subtitle: Text("Mobile Developer"),
          ),
          Divider(color: Colors.blue, indent: 16.0,),
          ListTile(
            leading: Icon(Icons.email, color: Colors.blue, size: 26.0,),
            title:  Text('nghiepnguyenfb@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.phone, color: Colors.blue, size: 26.0,),
            title:  Text('0934837474'),
          ),
          // Divider(color: Colors.blue, indent: 16.0,)
        ],
      ),
    );

    var sizeBox = Container(
      // margin: const EdgeInsets.only(top: 50.0),
      child: SizedBox(
        child: card,
        height: 250.0,
      ),
    );
    final centerScreen = Center(
      child: sizeBox ,
    );

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: centerScreen
      ),
    );
  }
}
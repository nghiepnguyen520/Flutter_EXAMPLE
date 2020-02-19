// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class RandomEnglishWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new  RandomEnglishWordState();
  }
}

//state
class RandomEnglishWordState extends State<RandomEnglishWords> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = WordPair.random(); 
    return new Text(
      wordPair.asUpperCase,
      style: new TextStyle(fontSize: 20.0),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter Nhé Nghiệp'),
        ),
        body: Center(
          //child: Text('Hello World Nghiep Nguyen'),
          //child: Text(wordPair.asPascalCase),
          child: new RandomEnglishWords(),
        ),
      ),
    );
  }
}
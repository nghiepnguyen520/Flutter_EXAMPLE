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
  final _words = <WordPair>[];
  final _checkedWords = new Set<WordPair>(); //check lish checked
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: new ListView.builder(itemBuilder: (context, index) {
        if (index >= _words.length) {
          _words.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_words[index], index);
      }),
    );
  }

  Widget _buildRow(WordPair wordPair, index){
    final color = index % 2 == 0 ? Colors.red : Colors.blue;
    final isChecked = _checkedWords.contains(wordPair);
    return new ListTile(
      leading: new Icon(isChecked ? Icons.check_box : Icons.check_box_outline_blank, color: color),
      title: new Text(
        wordPair.asUpperCase,
        style: new TextStyle(fontSize: 20.0, color:color)
      ),
      onTap: (){
        setState(() {
          print(isChecked);
          if(isChecked) {
            _checkedWords.remove(wordPair);
          } else {
            _checkedWords.add(wordPair);
          }
        });
      },
    );
  }
}

  

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: new RandomEnglishWords(),
    );
  }
}
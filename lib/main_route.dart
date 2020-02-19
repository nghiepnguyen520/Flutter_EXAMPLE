
import 'package:demoflutter/main_navigation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Router',
    initialRoute: '/',
    routes: {
      '/': (context) => FirstPgae(),
      '/second': (context) => SecondPage(),
    },
  ));
}
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    
    Widget _titleAction = Container(
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
    
    Widget _buildButton(IconData icon, String buttonTitle) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, color: Colors.blue,),
          Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: Text(buttonTitle),
          )
        ],
      );
    };

    Widget _fourButtonsSection = Container(
      padding:  const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButton(Icons.face, "My face"),
          _buildButton(Icons.home, "Home"),
          _buildButton(Icons.feedback, "Friend Feedback"),
          _buildButton(Icons.share, "Share")
        ],
      ),
    );
   
   final bottomTextSection = Container(
     padding: const EdgeInsets.all(30.0),
     child: Text(''' 
        There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. 
        If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. 
        All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. 
        It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. 
        The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.
     ''', 
      style: TextStyle(
        color: Colors.black
      ),
     ),
   );

    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset('images/10.png', fit: BoxFit.cover),
            _titleAction,
            _fourButtonsSection,
            bottomTextSection
          ],
        ),
      ),
    );
  }
}
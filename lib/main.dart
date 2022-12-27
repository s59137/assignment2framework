import 'package:flutter/material.dart';
import './question.dart';
import "./answer.dart";

/*
Name : Gabriel Loke Zhu Feng
Matric Number: S59137
Description of Task :
Develop fluttter-based project based on the following user interface design
*/

void main() => runApp(MyApp());
//stateful widget

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite Game?',
    ];

    return MaterialApp(
      //template for Screen
      home: Scaffold(
        appBar: AppBar(
          //AppBar centre title and title Text
          centerTitle: true,
          title: Text('Game'),
        ),
        body: Column(
          //column widget with children Question and Answer
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            Answer('Elden Ring'),
            Answer('God of War'),
            Answer('Tales of Arise'),
            Answer('Sekiro'),
          ],
        ),
      ),
    );
  }
}

//class for Second Screen that prints out Details after choosing
class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.title}) : super(key: key);

//final String to store passed data from onPressed button
  final String title;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          //text align center
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                //${widget.title} to retrieve text from answer.dart into another class
                'Your favourite Game is ${widget.title}',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:assignment2/main.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;

  Answer(this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          child: Text(answerText),
          onPressed: () {
            //when button is pressed String answerText is passed onto DetailScreen
            // as title: answerText with Navigator.push
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(title: answerText)));
          },
        ),
      ),
    );
  }
}

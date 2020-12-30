import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
    questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favorite color?",
      "What is your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App'),
          ),
          body: Column(
            children: [
              Text(questions[questionIndex]),
              RaisedButton(onPressed: answerQuestion, child: Text('Answer 2')),
              RaisedButton(onPressed: answerQuestion, child: Text('Answer 1')),
              RaisedButton(onPressed: answerQuestion, child: Text('Answer 3'))
            ],
          )),
    );
  }
}

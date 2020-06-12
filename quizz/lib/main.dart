import 'package:flutter/material.dart';
import 'package:quizz/QuizService.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black26,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    if (questionNumber < QuizService().quizes.length) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    QuizService().quizes[questionNumber].question,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    answerCheck(questionNumber, true);
                  },
                  color: Colors.green,
                  child: Text(
                    'True',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    answerCheck(questionNumber, false);
                  },
                  color: Colors.red,
                  child: Text(
                    'False',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
            )
          ]);
    } else {
      return Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            "Quiz Over",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lime, fontSize: 30.0),
          ),
        ),
      );
    }
  }

  answerCheck(int questionNumber, bool playerAnswer) {
    bool answer = QuizService().quizes[questionNumber].answer;
    if (answer == playerAnswer) {
      print('awsome');
    } else {
      print("shit");
    }
    setState(() {
      this.questionNumber++;
    });
  }
}

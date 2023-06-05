import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int questionNumber = 0;
int scoreKeeperLength = questionBank.length;
List<Icon> scoreKeeper = [];

void main() {
  runApp(ScoreKeep());
}

class ScoreKeep extends StatefulWidget {
  const ScoreKeep({Key? key}) : super(key: key);

  @override
  State<ScoreKeep> createState() => _ScoreKeepState();
}

class _ScoreKeepState extends State<ScoreKeep> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ScoreKeeper'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              questionBank[questionNumber].questionText.toString(),
              style: TextStyle(fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        bool correctAnswer =
                            questionBank[questionNumber].questionAnswer;

                        if (correctAnswer == true) {
                          if (questionNumber < questionBank.length) {
                            scoreKeeper.add(Icon(Icons.check));
                          }
                        } else {
                          if (questionNumber == questionBank.length) {
                            scoreKeeper.add(Icon(Icons.close));
                          }
                        }

                        increaseQuestion();
                      });
                    },
                    child: Text('True')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        bool correctAnswer =
                            questionBank[questionNumber].questionAnswer;

                        if (correctAnswer == false) {
                          scoreKeeper.add(Icon(Icons.check));
                        } else {
                          scoreKeeper.add(Icon(Icons.close));
                        }
                        increaseQuestion();
                      });
                    },
                    child: Text('False')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: scoreKeeper,
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionAnswer {
  QuestionAnswer({required this.questionText, required this.questionAnswer});

  String questionText;
  bool questionAnswer;
}

List<QuestionAnswer> questionBank = [
  QuestionAnswer(
      questionText: 'Modi is Prime Minister ?', questionAnswer: true),
  QuestionAnswer(questionText: 'Penga is my village ?', questionAnswer: true),
  QuestionAnswer(
      questionText: 'mamata is prime minister ?', questionAnswer: false),
  QuestionAnswer(questionText: 'nile is longest river ?', questionAnswer: true),
  QuestionAnswer(
      questionText: 'panipath war was on 1528 ?', questionAnswer: false),
  QuestionAnswer(
      questionText: 'red is my favorite ccolor  ?', questionAnswer: true),
  QuestionAnswer(
      questionText: 'sumanta drink beer daily ?', questionAnswer: true),
  QuestionAnswer(questionText: 'bissu can drink  ?', questionAnswer: false),
];

void increaseQuestion() {
  if (questionNumber < questionBank.length - 1) {
    questionBank[questionNumber++].questionText;
  }
}

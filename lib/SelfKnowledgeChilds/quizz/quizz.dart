import 'package:flutter/material.dart';
import 'package:mmtaz/SelfKnowledgeChilds/quizz/quiz.dart';
import 'package:mmtaz/SelfKnowledgeChilds/quizz/result.dart';

class quizz extends StatefulWidget {
  @override
  _quizzState createState() => _quizzState();
}

class _quizzState extends State<quizz> {
  final questions = const [
    {
      'questionText': 'رنگ مورد علاقت چیه؟',
      'answers': [
        {'text': 'سیاه', 'score': 10},
        {'text': 'قرمز', 'score': 5},
        {'text': 'سبز', 'score': 3},
        {'text': 'سفید', 'score': 1}
      ],
    },
    {
      'questionText': 'حیوان مورد علاقت چیه؟',
      'answers': [
        {'text': 'خرگوش', 'score': 3},
        {'text': 'مار', 'score': 11},
        {'text': 'فیل', 'score': 5},
        {'text': 'شیر', 'score': 9}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _questionIndex < questions.length
            ? Quiz(
          questions: questions,
          questionIndex: _questionIndex,
          answerQuestion: _answerQuestion,
        )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

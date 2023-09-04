import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/styled_text.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  var currentQuestionIndex = 0;
  
  void onTap(){
    setState(() {
      currentQuestionIndex++;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StyledText(currentQuestion.text),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledList().map((answer) => AnswerButton(onTap, answer)),
        ],
      ),
    );
  }
}

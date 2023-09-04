import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.onTap, this.text, {super.key});
  final void Function() onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            foregroundColor: const Color.fromARGB(255, 238, 215, 252),
            backgroundColor: Color.fromARGB(255, 34, 1, 92),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        onPressed: onTap,
        child: Text(
          text,
          textAlign: TextAlign.center,
        ));
  }
}

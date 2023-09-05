import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: data['user_answer'] as String != data['correct_answer'] as String
                          ? Colors.purpleAccent
                          : Colors.greenAccent,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(right: 10),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 237, 221, 248),
                              fontSize: 18),
                        ),
                        Text(data['user_answer'] as String,
                            style: GoogleFonts.lato(
                                color: const Color.fromARGB(255, 174, 240, 212),
                                fontSize: 15)),
                        Text(data['correct_answer'] as String,
                            style: GoogleFonts.lato(
                                color: const Color.fromARGB(255, 233, 138, 245),
                                fontSize: 15)),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

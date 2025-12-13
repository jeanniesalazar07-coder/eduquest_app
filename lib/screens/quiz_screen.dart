import 'package:flutter/material.dart';
import '../data/quizzes.dart';
import '../theme/colors.dart';

class QuizScreen extends StatefulWidget {
  final String subject;

  const QuizScreen({super.key, required this.subject});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int index = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    final questions = quizzes[widget.subject]!;
    final current = questions[index];

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text("${widget.subject} Quiz"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Question ${index + 1} of ${questions.length}",
              style: const TextStyle(fontSize: 18, color: AppColors.darkText),
            ),

            const SizedBox(height: 25),

            Text(
              current["question"],
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            ...current["options"].map<Widget>((opt) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onPressed: () {
                    if (opt == current["answer"]) score++;

                    if (index == questions.length - 1) {
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: const Text("Quiz Completed! 🎉"),
                          content: Text(
                            "Your score: $score / ${questions.length}",
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Close"),
                            ),
                          ],
                        ),
                      );
                    } else {
                      setState(() => index++);
                    }
                  },
                  child: Text(opt, style: const TextStyle(fontSize: 18)),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

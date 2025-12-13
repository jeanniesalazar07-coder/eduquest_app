import 'package:flutter/material.dart';
import '../data/lessons.dart';
import '../theme/colors.dart';
import 'lesson_detail_screen.dart';
import 'quiz_screen.dart';

class LessonsScreen extends StatelessWidget {
  final String subject;

  const LessonsScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    final lessonList = lessons[subject]!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text("$subject Lessons"),
      ),
      backgroundColor: AppColors.background,
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: lessonList.length + 1,
        itemBuilder: (context, index) {
          if (index == lessonList.length) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.accent,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => QuizScreen(subject: subject),
                  ),
                );
              },
              child: const Text("Take Quiz", style: TextStyle(fontSize: 20)),
            );
          }

          return Card(
            elevation: 4,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: ListTile(
              title: Text(
                lessonList[index].title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LessonDetailScreen(
                      title: lessonList[index].title,
                      content: lessonList[index].content,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

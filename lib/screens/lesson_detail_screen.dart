import 'package:flutter/material.dart';
import '../theme/colors.dart';

class LessonDetailScreen extends StatelessWidget {
  final String title;
  final String content;

  const LessonDetailScreen({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(backgroundColor: AppColors.primary, title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(content, style: const TextStyle(fontSize: 18, height: 1.5)),
      ),
    );
  }
}

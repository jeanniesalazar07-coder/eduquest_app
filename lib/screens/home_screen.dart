import 'package:flutter/material.dart';
import '../theme/colors.dart';
import 'subjects_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(30),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gradient Title
            ShaderMask(
              shaderCallback: (rect) => const LinearGradient(
                colors: [AppColors.primary, AppColors.accent],
              ).createShader(rect),
              child: const Text(
                "EduQuest",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Welcome to your learning adventure!\n"
              "Explore lessons, take quizzes, and track your progress!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: AppColors.darkText),
            ),

            const SizedBox(height: 40),

            // Start Learning Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SubjectsScreen()),
                );
              },
              child: const Text(
                "Start Learning",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

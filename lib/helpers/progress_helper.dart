class ProgressHelper {
  static final Map<String, double> _progress = {
    "History": 0.0,
    "Science": 0.0,
    "Math": 0.0,
    "English": 0.0,
    "Geography": 0.0,
    "General Knowledge": 0.0,
  };

  static void completeLesson(String subject, int totalLessons) {
    _progress[subject] = (_progress[subject]! + (1 / totalLessons)).clamp(
      0.0,
      1.0,
    );
  }

  static Map<String, double> getProgress() => _progress;
}

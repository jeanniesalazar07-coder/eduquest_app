import 'package:flutter/material.dart';
import '../helpers/progress_helper.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final progress = ProgressHelper.getProgress();

    return ListView(
      children: progress.entries.map((entry) {
        return ListTile(
          title: Text(entry.key),
          subtitle: LinearProgressIndicator(value: entry.value),
        );
      }).toList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'add_exercise_page.dart';
import 'exercise_history_page.dart';
import 'weekly_activity_page.dart';

class ExerciseHome extends StatelessWidget {
  const ExerciseHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          _ExerciseButton(
            title: "Add Exercise",
            icon: Icons.fitness_center,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AddExercisePage()),
              );
            },
          ),
          const SizedBox(height: 20),

          _ExerciseButton(
            title: "History",
            icon: Icons.history,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ExerciseHistoryPage()),
              );
            },
          ),
          const SizedBox(height: 20),

          _ExerciseButton(
            title: "Weekly Activity",
            icon: Icons.bar_chart,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const WeeklyActivityPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ExerciseButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const _ExerciseButton({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon: Icon(icon),
        label: Text(title),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 18),
        ),
      ),
    );
  }
}

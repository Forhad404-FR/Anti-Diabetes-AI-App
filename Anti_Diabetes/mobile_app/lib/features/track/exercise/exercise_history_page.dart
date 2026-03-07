import 'package:flutter/material.dart';

class ExerciseHistoryPage extends StatelessWidget {
  const ExerciseHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 7,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text("Walking - ${20 + index} mins"),
            subtitle: const Text("This week"),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

class AddExercisePage extends StatelessWidget {
  const AddExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Exercise")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            TextField(
              decoration: InputDecoration(
                labelText: "Duration (minutes)",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }
}

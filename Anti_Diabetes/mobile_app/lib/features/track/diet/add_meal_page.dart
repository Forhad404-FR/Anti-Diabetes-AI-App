import 'package:flutter/material.dart';

class AddMealPage extends StatelessWidget {
  const AddMealPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Meal")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            TextField(
              decoration: InputDecoration(
                labelText: "Meal Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Calories",
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

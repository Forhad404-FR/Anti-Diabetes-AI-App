import 'package:flutter/material.dart';

class AddGlucosePage extends StatelessWidget {
  const AddGlucosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Glucose")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: "Glucose Level (mg/dL)",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),

            const TextField(
              decoration: InputDecoration(
                labelText: "Notes",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Save"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'doctor_chat_page.dart';

class DoctorProfilePage extends StatelessWidget {
  final String name;

  const DoctorProfilePage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
            const SizedBox(height: 20),

            Text(name, style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DoctorChatPage(doctorName: name),
                    ),
                  );
                },
                child: const Text("Start Chat"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

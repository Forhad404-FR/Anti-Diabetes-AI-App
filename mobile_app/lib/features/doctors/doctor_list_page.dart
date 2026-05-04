import 'package:flutter/material.dart';
import 'doctor_profile_page.dart';

class DoctorListPage extends StatelessWidget {
  final String category;

  const DoctorListPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final doctors = [
      {"name": "Dr.Rahman", "experience": "10 Years"},
      {"name": "Dr.Rahman", "experience": "10 Years"},
      {"name": "Dr.Rahman", "experience": "10 Years"},
    ];
    return Scaffold(
      appBar: AppBar(title: Text(category)),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(doctors[index]["name"]!),
              subtitle: Text("Experience: ${doctors[index]["experience"]}"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        DoctorProfilePage(name: doctors[index]["name"]!),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

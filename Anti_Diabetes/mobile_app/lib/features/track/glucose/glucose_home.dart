import 'package:flutter/material.dart';
import 'add_glucose_page.dart';
import 'glucose_chart_page.dart';
import 'glucose_history_page.dart';

class GlucoseHome extends StatelessWidget {
  const GlucoseHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          _GlucoseButton(
            title: "Add Glucose",
            icon: Icons.add,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AddGlucosePage()),
              );
            },
          ),
          const SizedBox(height: 20),

          _GlucoseButton(
            title: "History",
            icon: Icons.history,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const GlucoseHistoryPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _GlucoseButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const _GlucoseButton({
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

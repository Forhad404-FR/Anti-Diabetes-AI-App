import 'package:flutter/material.dart';

class HealthScoreCard extends StatelessWidget {
  const HealthScoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Health Score", style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              Text(
                "82%",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Icon(Icons.favorite, size: 40, color: Colors.redAccent),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AITipCard extends StatelessWidget {
  const AITipCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: const [
          Icon(Icons.smart_toy, size: 30),
          SizedBox(width: 15),
          Expanded(
            child: Text(
              "AI Tip: Walk 20 minutes after dinner to help stablilize glucose levels.",
            ),
          ),
        ],
      ),
    );
  }
}

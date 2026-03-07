import 'package:flutter/material.dart';
import 'widgets/health_score_card.dart';
import 'widgets/summary_card.dart';
import 'widgets/ai_tip_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SummaryCard(),
            SizedBox(height: 20),
            HealthScoreCard(),
            SizedBox(height: 20),
            AITipCard(),
          ],
        ),
      ),
    );
  }
}

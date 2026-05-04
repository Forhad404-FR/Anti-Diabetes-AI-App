import 'package:flutter/material.dart';
import 'package:mobile_app/features/ai_chat/ai_chat_page.dart';
import 'package:mobile_app/features/dashboard/dashboard_page.dart';
import 'package:mobile_app/features/doctors/doctor_category_page.dart';
import 'package:mobile_app/features/profile/profile_page.dart';
import 'package:mobile_app/features/track/track_page.dart';
import '../features/dashboard/dashboard_page.dart';
import '../features/track/track_page.dart';
import '../features/doctors/doctor_category_page.dart';
import '../features/ai_chat/ai_chat_page.dart';
import '../features/profile/profile_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = const [
    DashboardPage(),
    TrackPage(),
    DoctorCategoryPage(),
    AIChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_rounded),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart_rounded),
            label: "Track",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services_rounded),
            label: "Doctors",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_toy_rounded),
            label: "AI Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class _PlaceholderPage extends StatelessWidget {
  final String title;
  const _PlaceholderPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title, style: Theme.of(context).textTheme.headlineLarge),
    );
  }
}

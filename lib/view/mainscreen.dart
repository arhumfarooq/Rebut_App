import 'package:flutter/material.dart';
import 'package:lx/view/home_screen.dart';
import 'package:lx/view/explore.dart';
import 'package:lx/view/liked.dart';
import 'package:lx/view/messages.dart';
import 'package:lx/components/bottom_navigation.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const Explore(),
    const Liked(),
    const Messages(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // 👈 makes bottom nav float over body
      body: screens[currentIndex],
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: currentIndex,
        onItemTapped: onTabTapped,
      ),
    );
  }
}

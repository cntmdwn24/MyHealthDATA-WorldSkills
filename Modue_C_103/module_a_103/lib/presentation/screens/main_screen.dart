import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module_a_103/presentation/screens/alarm_screen.dart';
import 'package:module_a_103/presentation/screens/home_screen.dart';
import 'package:module_a_103/presentation/screens/my_page_screen.dart';
import 'package:module_a_103/presentation/screens/workout_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _screens = [
    HomeScreen(),
    AlarmScreen(),
    WorkoutScreen(),
    MyPageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff393939),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: (_currentIndex == 0) ? Colors.white : Colors.grey.shade600,
              width: 30,
              height: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/alarm-clock.svg',
              color: (_currentIndex == 1) ? Colors.white : Colors.grey.shade600,
              width: 30,
              height: 30,
            ),
            label: 'Alarm',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/run-on.svg',
              color: (_currentIndex == 2) ? Colors.white : Colors.grey.shade600,
              width: 30,
              height: 30,
            ),
            label: 'Workout',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              color: (_currentIndex == 3) ? Colors.white : Colors.grey.shade600,
              width: 30,
              height: 30,
            ),
            label: 'My Page',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/experience_screen.dart';
import 'screens/skill_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio Opik',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 0;
  int _previousIndex = 0;

  final List<Widget> _pages = [HomeScreen(), ExperienceScreen(), SkillScreen()];

  void _onTabTapped(int index) {
    setState(() {
      _previousIndex = _currentIndex;
      _currentIndex = index;
    });
  }

  void _backLogic() {
    setState(() {
      if (_previousIndex != _currentIndex) {
        // Kembali ke page sebelumnya
        _currentIndex = _previousIndex;
      } else {
        // Kembali ke Home Page kalo di ada d halaman Counter atau History
        _currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Experience',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: 'Skill',
          ),
        ],
      ),
    );
  }
}

import 'package:challenge3/src/screens/sub_screens/screen1.dart';
import 'package:challenge3/src/screens/sub_screens/screen2.dart';
import 'package:challenge3/src/screens/sub_screens/screen3.dart';
import 'package:challenge3/src/screens/sub_screens/screen4.dart';
import 'package:flutter/material.dart';

class Lab7AScreen extends StatefulWidget {
  const Lab7AScreen({super.key});

  @override
  State<Lab7AScreen> createState() => _Lab7AScreenState();
}

class _Lab7AScreenState extends State<Lab7AScreen> {
  final tabs = [
    Center(child: Screen1(),),
    Center(child: Screen2(),),
    Center(child: Screen3(),),
    Center(child: Screen4(),)
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Challenge #3")),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue.shade300,
        selectedItemColor: Colors.white,
        selectedFontSize: 19.0,
        unselectedFontSize: 14.0,
        iconSize: 30.0,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_view),
            label: 'Data'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School'
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
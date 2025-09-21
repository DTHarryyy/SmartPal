import 'package:flutter/material.dart';
import 'package:smartpal/features/home/presentation/pages/home_widgets_tree.dart';

class WidgetsTree extends StatefulWidget {
  const WidgetsTree({super.key});

  @override
  State<WidgetsTree> createState() => _WidgetsTreeState();
}

class _WidgetsTreeState extends State<WidgetsTree> {
  int _selectedIndex = 0;
  final List<Widget> pages = [
    HomeWidgetsTree(),
    HomeWidgetsTree(),
    HomeWidgetsTree(),
    HomeWidgetsTree(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.transparent,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Planner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_rounded),
            label: 'Messages',
          ),
        ],
      ),
    );
  }
}

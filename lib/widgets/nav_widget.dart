import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/pages/home_screen.dart';
import 'package:ticket_app/pages/search/search_screen.dart';
import 'package:ticket_app/pages/ticket/ticket_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _activeTab = 0;
  void _onItemTapped(int index) {
    setState(() {
      _activeTab = index;
    });
  }

  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Text('Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[_activeTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activeTab,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: 'Tickets',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

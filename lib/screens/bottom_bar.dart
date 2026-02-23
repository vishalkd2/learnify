
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learnify/core/app_style.dart';
import 'package:learnify/screens/courses_screen.dart';
import 'package:learnify/screens/home_screen.dart';
import 'package:learnify/screens/notification_screen.dart';
import 'package:learnify/screens/profile_screen.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({super.key});
  @override
  State<BottomBar> createState() => _BottomBarState();
}
class _BottomBarState extends State<BottomBar> {

  int _selectedIndex=0;
  static final List<Widget> _widgetOptions = [
    HomeScreen(),
    CoursesScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{SystemNavigator.pop();return true;},
      child: Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex],),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: whiteColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        selectedItemColor: primary,
        unselectedItemColor: blackColor,
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),activeIcon: Icon(Icons.home_filled),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book_outlined),activeIcon: Icon(Icons.menu_book),label: "Certificate"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none),activeIcon: Icon(Icons.notifications),label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity_sharp),activeIcon: Icon(Icons.person),label: "Profile"),
        ],
      ),
      ),
    );
  }
}

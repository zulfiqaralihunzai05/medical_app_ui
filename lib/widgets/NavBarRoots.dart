import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app_ui/screens/HomeScreen.dart';
import 'package:medical_app_ui/screens/MessageScreen.dart';
import 'package:medical_app_ui/screens/ScheduleScreen.dart';
import 'package:medical_app_ui/screens/SettingScreen.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;
  final _screens = [

    //homeScreen
    HomeScreen(),

    //Message Screen
    MessageScreen(),

    //Schedule Screen
    ScheduleScreen(),

    //Setting Screen
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff7165d6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,

          ),
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),
            label: "Home"
            ),

            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_fill),
                label: "Message"
            ),

            BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined),
                label: "Schedule"
            ),

            BottomNavigationBarItem(icon: Icon(Icons.settings),
                label: "Settings"
            ),
          ],
        ),
      ),

    );
  }
}

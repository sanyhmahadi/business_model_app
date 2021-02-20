import 'package:business_Model_App/business_model/ui/white_mode/catalogous_for_white.dart';
import 'package:business_Model_App/business_model/ui/white_mode/home.white.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [HomePage(), CatalogusPageWhite()];
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF8E7EF0),
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 10),
              ),
              icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text(
                'Chat',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 10),
              ),
              icon: Icon(CupertinoIcons.mail)),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text(
                'Profile',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 10),
              ),
              icon: Icon(CupertinoIcons.person)),
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

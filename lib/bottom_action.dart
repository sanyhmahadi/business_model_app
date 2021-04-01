import 'package:business_Model_App/business_model/add.dart';
import 'package:business_Model_App/business_model/ui/white_mode/checkbox.dart';
import 'package:business_Model_App/business_model/ui/white_mode/description.dart';
import 'package:business_Model_App/business_model/ui/white_mode/history.dart';
import 'package:business_Model_App/business_model/ui/white_mode/statistics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'business_model/ui/white_mode/catalogous_for_white.dart';
import 'business_model/ui/white_mode/home.white.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final tabs = [
      HomePage(),
      CatalogusPageWhite(),
      Description(),
      History(),
      AddPage(),
    ];
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF8E7EF0),
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedFontSize: 40,
        unselectedFontSize: 11,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        iconSize: 25,
        onTap: _onItemTapped,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text(
                '',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 10),
              ),
              icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text(
                '',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 10),
              ),
              icon: Icon(CupertinoIcons.person)),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text(
                '',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 10),
              ),
              icon: Icon(CupertinoIcons.add)),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text(
                '',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 10),
              ),
              icon: Icon(CupertinoIcons.graph_circle)),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text(
                '',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 10),
              ),
              icon: Icon(CupertinoIcons.settings)),
        ],
      ),
    );
  }
}

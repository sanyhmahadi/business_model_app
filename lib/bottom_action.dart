import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'business_model/ui/white_mode/catalogous_for_white.dart';
import 'business_model/ui/white_mode/home.white.dart';
import 'business_model/ui/white_mode/pageno14.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  // ignore: unused_field
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text('Home Page',
  //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   Text('Profile Page',
  //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   Text('Add Page',
  //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   Text('Graph Page',
  //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   Text('Settings Page',
  //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  // ];
  // ignore: unused_element
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
      HomePage(),
      CatalogusPageWhite(),
      PageNo14(),
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

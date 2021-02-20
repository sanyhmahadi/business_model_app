import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  // ignore: unused_field
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('ContactBook Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Time Circle Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.home,
                  color: Colors.black,
                ),
                // ignore: deprecated_member_use
                title: Text('Home'),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.addressBook, color: Colors.black),
                // ignore: deprecated_member_use
                title: Text('Contact Book'),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.male, color: Colors.black),
              // ignore: deprecated_member_use
              title: Text('Time Circle'),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.timesCircle, color: Colors.black),
              // ignore: deprecated_member_use
              title: Text('Time Circle'),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.tools, color: Colors.black),
              // ignore: deprecated_member_use
              title: Text('Time Circle'),
              backgroundColor: Colors.white,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.transparent,
          iconSize: 25,
          onTap: _onItemTapped,
          elevation: 0.0),
    );
  }
}

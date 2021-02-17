import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CatalogusPageWhite extends StatefulWidget {
  @override
  _CatalogusPageWhiteState createState() => _CatalogusPageWhiteState();
}

class _CatalogusPageWhiteState extends State<CatalogusPageWhite> {
  int _selectedIndex = 0;
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
      backgroundColor: Color(0xffffffff),
      appBar: new AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: new Text(
            'Catalogue',
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              searchOptionBar(),
              underSearchBarRow(context),
              rowno2(context),
              // rowno3(context),
              // rowno4(context),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.home,
                  color: Colors.black,
                ),
                title: Text('Home'),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.addressBook, color: Colors.black),
                title: Text('Contact Book'),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.male, color: Colors.black),
              title: Text('Time Circle'),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.timesCircle, color: Colors.black),
              title: Text('Time Circle'),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.tools, color: Colors.black),
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

  Widget searchOptionBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Zoeken...",
                  fillColor: Colors.black,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  contentPadding: EdgeInsets.all(8)),
              onSubmitted: (value) {},
            ),
          ],
        ),
        color: Color(0xfff5f6fa),
      ),
    );
  }

  Widget underSearchBarRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  //box 1
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 3.3,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xfff1f2f6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 15.0,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1564171149171-1b0e8c0e0bef?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                        backgroundColor: Colors.transparent,
                      ),
                      Center(
                        child: Text("Amfetamine",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  //box 2
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 3.3,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xfff1f2f6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 15.0,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1564171149171-1b0e8c0e0bef?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                        backgroundColor: Colors.transparent,
                      ),
                      Center(
                        child: Text("Amfetamine",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  //box 3
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 3.3,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xfff1f2f6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 15.0,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1564171149171-1b0e8c0e0bef?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                        backgroundColor: Colors.transparent,
                      ),
                      Center(
                        child: Text("Amfetamine",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }

  Widget rowno2(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  //margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,
                  height: 153,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff8854d0),
                      Color(0xff81ecec),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("Inhaleren/Roken",
                      style: TextStyle(fontSize: 19, color: Colors.white)),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 18),
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,
                  height: 153,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff8854d0),
                      Color(0xff81ecec),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("Poeder",
                      style: TextStyle(fontSize: 19, color: Colors.white)),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 18),
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,
                  height: 153,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff8854d0),
                      Color(0xff81ecec),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("Drinken",
                      style: TextStyle(fontSize: 19, color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}

/*Widget rowno3(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Row(children: [
        Container(
          margin: EdgeInsets.only(left: 33.0, top: 10),
          padding: EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          height: 153,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff8854d0),
              Color(0xff81ecec),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text("Poeder",
              style: TextStyle(fontSize: 19, color: Colors.white)),
        ),
      ]),
    );
  }

  Widget rowno4(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
        Container(
          margin: EdgeInsets.only(left: 33.0, top: 10),
          padding: EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          height: 153,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff8854d0),
              Color(0xff81ecec),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text("Drinken",
              style: TextStyle(fontSize: 19, color: Colors.white)),
        ),
      ]),
    );
  }
}












######## bellow code is by stateless widget


class CatalogusPageWhite1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: new AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Text(
            'Catalogue',
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              searchOptionBar(),
              underSearchBarRow(),
              rowno2(),
              rowno3(),
              rowno4(),
            ],
          ),
        ],
      ),
    );
  }

  Widget searchOptionBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Zoeken...",
              fillColor: Colors.grey,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              contentPadding: EdgeInsets.all(8)),
          onSubmitted: (value) {},
        ),
      ),
    );
  }

  Widget underSearchBarRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5.0), //box 1
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  width: 90,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xfff1f2f6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("Amfetamine",
                      style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 60.0), //box 2
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  width: 90,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xfff1f2f6),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: Text("Amfetamine",
                      style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 57.0), // box 3
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  width: 90,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xfff1f2f6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("Amfetamine",
                      style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
              ],
            ),
          ]),
    );
  }

  Widget rowno2() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(left: 33.0, top: 10),
                padding: EdgeInsets.all(10.0),
                //alignment: Alignment.center, box text ta kon positoon a thakbe ata decide kore
                width: 330,
                height: 153,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xff8854d0),
                    Color(0xff81ecec),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "Inhaleren/Roken",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                  ),
                )),
          ]),
    );
  }

  Widget rowno3() {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 33.0, top: 10),
              padding: EdgeInsets.all(10.0),
              //alignment: Alignment.center, box text ta kon positoon a thakbe ata decide kore
              width: 330,
              height: 153,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff8854d0),
                  Color(0xff81ecec),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text("Poeder",
                  style: TextStyle(fontSize: 19, color: Colors.white)),
            ),
          ]),
    );
  }

  Widget rowno4() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 33.0, top: 10),
              padding: EdgeInsets.all(10.0),
              //alignment: Alignment.center, box text ta kon positoon a thakbe ata decide kore
              width: 330,
              height: 153,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff8854d0),
                  Color(0xff81ecec),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text("Drinken",
                  style: TextStyle(fontSize: 19, color: Colors.white)),
            ),
          ]),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CatalogusPageWhite extends StatefulWidget {
  @override
  _CatalogusPageWhiteState createState() => _CatalogusPageWhiteState();
}

class _CatalogusPageWhiteState extends State<CatalogusPageWhite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Text(
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
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(FontAwesomeIcons.search),
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
                        backgroundImage: AssetImage("Images/icons/leaf.png"),
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
                        backgroundImage: AssetImage("Images/icons/leaf.png"),
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
                        backgroundImage: AssetImage("Images/icons/leaf.png"),
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

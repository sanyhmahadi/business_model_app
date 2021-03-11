import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageNo14 extends StatefulWidget {
  @override
  _PageNo14State createState() => _PageNo14State();
}

class _PageNo14State extends State<PageNo14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 20),
            child: Text(
              "Toevoegen",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          backgroundColor: Color(0xffffffff),
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Color(0xffffffff),
        body: ListView(
          children: [
            card1(context),
            card2(context),
            card3(context),
            card4(context),
            card5(context),
            card6(context),
            bigContainer(context),
          ],
        ));
  }
}

Widget card1(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Container(
      margin: EdgeInsets.all(8.0),
      height: 80.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffdfe6e9),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1564171149171-1b0e8c0e0bef?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.search),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Zoek of vul in",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Naam"),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  IconButton(
                    iconSize: 24,
                    color: Colors.grey,
                    icon: Icon(FontAwesomeIcons.arrowDown),
                    onPressed: () {},
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 24,
                    color: Colors.grey,
                    icon: Icon(FontAwesomeIcons.diceThree),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget card2(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Container(
      margin: EdgeInsets.all(8.0),
      height: 80.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffdfe6e9),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1564171149171-1b0e8c0e0bef?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.search),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Zoek of vul in",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Quantiteit"),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  IconButton(
                    iconSize: 24,
                    color: Colors.grey,
                    icon: Icon(FontAwesomeIcons.arrowDown),
                    onPressed: () {},
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 24,
                    color: Colors.grey,
                    icon: Icon(FontAwesomeIcons.diceThree),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget card3(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Container(
      margin: EdgeInsets.all(8.0),
      height: 80.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffdfe6e9),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1564171149171-1b0e8c0e0bef?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(FontAwesomeIcons.diceThree),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Vul in",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Aantal"),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  IconButton(
                    iconSize: 24,
                    color: Colors.grey,
                    icon: Icon(FontAwesomeIcons.arrowDown),
                    onPressed: () {},
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 24,
                    color: Colors.grey,
                    icon: Icon(FontAwesomeIcons.diceThree),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget card4(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Container(
      margin: EdgeInsets.all(8.0),
      height: 80.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffdfe6e9),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1564171149171-1b0e8c0e0bef?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(FontAwesomeIcons.calendar),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Datum",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("DD-MMM-YYY"),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  IconButton(
                    iconSize: 24,
                    color: Colors.grey,
                    icon: Icon(FontAwesomeIcons.arrowDown),
                    onPressed: () {},
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 24,
                    color: Colors.grey,
                    icon: Icon(FontAwesomeIcons.diceThree),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget card5(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Container(
      margin: EdgeInsets.all(8.0),
      height: 80.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffdfe6e9),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1564171149171-1b0e8c0e0bef?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(FontAwesomeIcons.notesMedical),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Typen",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Notities"),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  IconButton(
                    iconSize: 24,
                    color: Colors.grey,
                    icon: Icon(FontAwesomeIcons.arrowDown),
                    onPressed: () {},
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 24,
                    color: Colors.grey,
                    icon: Icon(FontAwesomeIcons.diceThree),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget card6(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Container(
      margin: EdgeInsets.all(8.0),
      height: 80.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffdfe6e9),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1564171149171-1b0e8c0e0bef?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.search),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Zoek of vul in",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("IDK"),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  IconButton(
                    iconSize: 24,
                    color: Colors.grey,
                    icon: Icon(FontAwesomeIcons.arrowDown),
                    onPressed: () {},
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 24,
                    color: Colors.grey,
                    icon: Icon(FontAwesomeIcons.diceThree),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget bigContainer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Container(
      margin: EdgeInsets.all(8.0),
      height: 190.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffdfe6e9),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Beschrijving",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                  ],
                ),
                Row(
                  children: [Text("Nobaab big boobs")],
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  FontAwesomeIcons.chartBar,
                  size: 120,
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: new Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            firstRow(),
            secondtRow(),
            thirdRow(context),

            //MyNavigationBar(),
          ],
        ),
      ),
    );
  }

  Widget firstRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 153, //MediaQuery.of(context).size.width,
                        height: 153,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xff8854d0),
                                Color(0xff81ecec),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text("Toevoegen",
                                      style: TextStyle(
                                          fontSize: 19,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                            Center(
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                                size: 50,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
////first row right side container
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    width: 153, //MediaQuery.of(context).size.width,
                    height: 153,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xffbe2edd),
                        Color(0xff81ecec),
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: Text("Media",
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        Center(
                          child: Icon(
                            FontAwesomeIcons.share,
                            color: Colors.white,
                            size: 50,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget secondtRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
////second row left side container
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        width: 153, //MediaQuery.of(context).size.width,
                        height: 153,
                        decoration: BoxDecoration(
                          color: Color(0xfff1f2f6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.share,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 35.0, left: 8.0),
                                      child: Text(
                                        "Nobaab Hedar pot sudo game khele time waste koros",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 105.0, left: 8.0),
                                      child: Text(
                                        "Baingchod",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

//second row right side container

              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        width: 153, //MediaQuery.of(context).size.width,
                        height: 153,
                        decoration: BoxDecoration(
                          color: Color(0xfff1f2f6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.facebookMessenger,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 35.0, left: 8.0),
                                      child: Text(
                                        "bal",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 105.0, left: 8.0),
                                      child: Text(
                                        "Hedarpot",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget thirdRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        width: 153, //MediaQuery.of(context).size.width,
                        height: 153,
                        decoration: BoxDecoration(
                          color: Color(0xfff1f2f6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.share,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 35.0, left: 8.0),
                                      child: Text(
                                        "NobaabBoobs",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 105.0, left: 8.0),
                                      child: Text(
                                        "Baingchod",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        width: 153, //MediaQuery.of(context).size.width,
                        height: 153,
                        decoration: BoxDecoration(
                          color: Color(0xfff1f2f6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.facebookMessenger,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 35.0, left: 8.0),
                                      child: Text(
                                        "NanarGhori hate proi,moja kori",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 105.0, left: 8.0),
                                      child: Text(
                                        "Hedarpot",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 17.0, left: 8.0),
                child: Column(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            //margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.all(8.0),
                            width: MediaQuery.of(context).size.width,
                            height: 139,
                            decoration: BoxDecoration(
                              color: Color(0xfff1f2f6),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text("Inhaleren/Roken",
                                style: TextStyle(
                                    fontSize: 19, color: Colors.black)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}

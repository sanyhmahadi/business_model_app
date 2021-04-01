import 'package:business_Model_App/constant/constant.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  int touchedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Text(
            'Beschrijiving',
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
              rowno2(context),
              row3(context),
              row4(context),
            ],
          ),
        ],
      ),
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
                    child: Padding(
                      padding: EdgeInsets.only(left: 150, top: 110),
                      child: Text("Laatste gebruik op 1 jan 2021 01:21",
                          style: TextStyle(fontSize: 12, color: Colors.white)),
                    )),
              ],
            ),
            Stack(
              children: [
                ListTile(
                  title: Text(
                    "Titel",
                    style: TextStyle(
                        color: appColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text("Subtitel"),
                ),
              ],
            ),
            Container(
              child: Stack(
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            //box 1
                            padding: EdgeInsets.all(10.0),
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 5,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xfff1f2f6),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [BoxShadow(color: appColor)]),

                            child: Row(
                              children: [
                                Center(
                                  child: Text("Tags",
                                      style: TextStyle(
                                          fontSize: 10, color: appColor)),
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
                            width: MediaQuery.of(context).size.width / 5,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xfff1f2f6),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [BoxShadow(color: appColor)]),
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Center(
                                  child: Text("Tags",
                                      style: TextStyle(
                                          fontSize: 10, color: appColor)),
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
                            width: MediaQuery.of(context).size.width / 5,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xfff1f2f6),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [BoxShadow(color: appColor)]),
                            child: Row(
                              children: [
                                Center(
                                  child: Text("Tags",
                                      style: TextStyle(
                                          fontSize: 10, color: appColor)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 50),
                              child: Text(
                                "\$5.22",
                                style: TextStyle(
                                    color: appColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              )),
                          Container(
                              padding: EdgeInsets.only(top: 30, left: 50),
                              child: Text("Per gram")),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }

  Widget row3(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 200,
                      padding: EdgeInsets.only(top: 30),
                      child: ListTile(
                        title: Text(
                          'Beschrijving',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: const Color(0xff403572),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        subtitle: Text(
                          'Beschrijving uitleg over dit blok en alles wat daar bijhoort...Beschrijving uitleg over dit blok en alles wat daar bijhoort...Beschrijving uitleg over dit blok en alles wat daar bijhoort...Beschrijving uitleg over dit blok en alles wat daar bijhoort...Beschrijving uitleg over.',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 10,
                            color: const Color(0x80403572),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90.0, top: 30),
                  child: PieChart(
                    PieChartData(
                        pieTouchData:
                            PieTouchData(touchCallback: (pieTouchResponse) {
                          setState(() {
                            if (pieTouchResponse.touchInput is FlLongPressEnd ||
                                pieTouchResponse.touchInput is FlPanEnd) {
                              touchedIndex = -1;
                            } else {
                              touchedIndex =
                                  pieTouchResponse.touchedSectionIndex;
                            }
                          });
                        }),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        sectionsSpace: 0,
                        centerSpaceRadius: 0,
                        sections: showingSections()),
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }

  Widget row4(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 200,
                      padding: EdgeInsets.only(top: 30),
                      child: ListTile(
                        title: Text(
                          'Origine',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: const Color(0xff403572),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        subtitle: Text(
                          'Beschrijving uitleg over dit blok en alles wat daar bijhoort...Beschrijving uitleg over dit blok en alles wat daar bijhoort...Beschrijving uitleg over dit blok en alles wat daar bijhoort...Beschrijving uitleg over dit blok en alles wat daar bijhoort...Beschrijving uitleg over.Beschrijving uitleg over dit blok en alles wat daar bijhoort...Beschrijving uitleg over dit blok en alles wat daar bijhoort...Beschrijving uitleg over dit blok en alles wat daar bijhoort...Beschrijving uitleg over dit blok en alls.',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 10,
                            color: const Color(0x80403572),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 20 : 16;
      final double radius = isTouched ? 110 : 70;
      final double widgetSize = isTouched ? 55 : 10;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff855CF8),
            value: 65,
            radius: radius,
            badgePositionPercentageOffset: .98,
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfffE289F2),
            value: 30,
            radius: radius,
            badgePositionPercentageOffset: .98,
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 16,
            radius: radius,
            badgePositionPercentageOffset: .98,
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xffACB9FF),
            value: 20,
            radius: radius,
            badgePositionPercentageOffset: .98,
          );
        default:
          return null;
      }
    });
  }
}

class _Badge extends StatelessWidget {
  final String svgAsset;
  final double size;
  final Color borderColor;

  const _Badge(
    this.svgAsset, {
    Key key,
    @required this.size,
    @required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            offset: const Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      ),
      padding: EdgeInsets.all(size * .15),
      child: Center(
        child: kIsWeb
            ? Image.network(svgAsset, fit: BoxFit.contain)
            : SvgPicture.asset(
                svgAsset,
                fit: BoxFit.contain,
              ),
      ),
    );
  }
}

import 'package:business_Model_App/constant/constant.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  int touchedIndex;
  List view = [
    {
      "title": "🔍 Zoek of vul in",
      "subtitle": "Naam",
      "image": "gram",
    },
    {
      "title": "🔍 Zoek of vul in",
      "subtitle": "Quantiteit",
      "image": "gram",
    },
    {
      "title": "🎲 Vul in",
      "subtitle": "Aantal",
      "image": "gram",
    },
    {
      "title": "📆 Datum",
      "subtitle": "DD-MMM-YYYY",
      "image": "gram",
    },
    {
      "title": "🗒️ Typen",
      "subtitle": "Notities",
      "image": "gram",
    },
    {
      "title": "🔍 Zoek of vul in",
      "subtitle": "IDK",
      "image": "gram",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: new Text(
              'Toevoegen',
              style: TextStyle(color: appColor),
            ),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              listrow(context),
              row3(context),
            ],
          ),
        ));
  }

  Widget listrow(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: view.length,
        itemBuilder: (buildContext, index) {
          var viewIndex = view[index];
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                elevation: 1,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Image.asset(
                        "Images/icons/leaf.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: [
                          Text(
                            viewIndex["title"],
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            viewIndex["subtitle"],
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Row(
                      children: [
                        Container(child: Icon(Icons.arrow_drop_down)),
                        Container(child: Icon(Icons.more_vert)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {},
          );
        });
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

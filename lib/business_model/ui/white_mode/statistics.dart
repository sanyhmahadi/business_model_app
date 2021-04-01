import 'dart:math';
import 'package:flutter/material.dart';

class Statics extends StatefulWidget {
  @override
  _StaticsState createState() => _StaticsState();
}

class _StaticsState extends State<Statics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: new Text(
              'Statistieken',
              style: TextStyle(color: Colors.black),
            ),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              firstRow(context),
              GraphPaintDemo(),
            ],
          ),
        ));
  }

  Widget firstRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
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
                  height: 180,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff8854d0),
                      Color(0xff81ecec),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 138, left: 120),
                        child: Text("Highlights",
                            style:
                                TextStyle(fontSize: 19, color: Colors.white)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 100, left: 12),
                        child: Text(
                          "(30 dagen)",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 100.0, right: 10),
                        child: DropdownButton<String>(
                          iconEnabledColor: Colors.white,
                          items:
                              <String>['A', 'B', 'C', 'D'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      )
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 70, left: 20),
                          height: 91,
                          width: 95,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                30), //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 5, //spread radius
                                blurRadius: 7, // blur radius
                                offset:
                                    Offset(0, 2), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 70, left: 20),
                          height: 91,
                          width: 95,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                30), //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 5, //spread radius
                                blurRadius: 7, // blur radius
                                offset:
                                    Offset(0, 2), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 70, left: 20),
                          height: 91,
                          width: 95,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                30), //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 5, //spread radius
                                blurRadius: 7, // blur radius
                                offset:
                                    Offset(0, 2), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
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
      ]),
    );
  }
}

class GraphPaintDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 480,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFEFECF5)),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text("Meest gebruikte drugs",
                      style: TextStyle(fontSize: 20)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "(30 dagen)",
                    style: TextStyle(color: Color(0xFF403572)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: DropdownButton<String>(
                    iconEnabledColor: Color(0xFF403572),
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2.0, right: 230),
                  child: Text("Hoog naar laag"),
                ),
              ],
            ),
            Card(
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.all(10),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          color: Color(0xFFACB9FF),
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Text(
                        "Coke",
                        style: TextStyle(color: Color(0xFFACB9FF)),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Container(
                          color: Color(0xFF865DF9),
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Text(
                        "Amfetamine",
                        style: TextStyle(color: Color(0xFF865DF9)),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          color: Color(0xFFE289F2),
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Text(
                        "Wiet",
                        style: TextStyle(
                          color: Color(0xFFE289F2),
                        ),
                      ),
                    ],
                  ),
                  AspectRatio(
                      aspectRatio: 1,
                      child: CustomPaint(
                        painter: GraphPaint(
                          hGridLines: 10,
                          dataLayer1: [30, 50, 80, 40, 0],
                          dataLayer2: [100, 80, 60, 40, 50],
                          dataLayer3: [60, 30, 40, 45, 60, 80],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GraphPaint extends CustomPainter {
  GraphPaint(
      {@required this.hGridLines,
      @required this.dataLayer1,
      @required this.dataLayer2,
      @required this.dataLayer3})
      : gridLinePaint = Paint()
          ..style = PaintingStyle.stroke
          ..color = Colors.grey.shade300
          ..strokeWidth = 2;

  final int hGridLines;
  final List<double> dataLayer1, dataLayer2, dataLayer3;
  final Paint gridLinePaint;
  final Color c1 = const Color(0xe0b5bffd);
  final Color c2 = const Color(0xe09362FA);
  final Color c3 = const Color(0xe0e791f7);
  double maxValue;

  @override
  void paint(Canvas canvas, Size size) {
    maxValue = [...dataLayer1, ...dataLayer2, ...dataLayer3].reduce(max);
    maxValue = maxValue + maxValue * .3;

    drawHorizontalGridLines(size, canvas);
    // drawVerticalGridLines(size, canvas);

    final shade1 = Paint()
      ..shader =
          LinearGradient(colors: [c1, c2]).createShader(Offset.zero & size);
    drawGraphLayer(size, canvas, dataLayer1, shade1);

    final shade2 = Paint()
      ..shader =
          LinearGradient(colors: [c2, c3]).createShader(Offset.zero & size);
    drawGraphLayer(size, canvas, dataLayer2, shade2);

    final shade3 = Paint()
      ..shader =
          LinearGradient(colors: [c1, c3]).createShader(Offset.zero & size);
    drawGraphLayer(size, canvas, dataLayer3, shade3);
  }

  void drawGraphLayer(
      Size size, Canvas canvas, List<double> values, Paint fill) {
    if (values == null || values.length < 2) {
      print('invalid data points -> $values');
      return;
    }

    final ry = size.height / maxValue;
    final blocX = size.width / (values.length - 1);

    var path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, -values[0] * ry);

    for (var i = 1; i < values.length; i++) {
      final px = blocX * i;
      final py = -values[i] * ry;
      final h1x = blocX * (i - 1) + blocX * .5;
      final h1y = -values[i - 1] * ry;
      final h2x = px - blocX * .5;
      final h2y = py;

      path.cubicTo(h1x, h1y, h2x, h2y, px, py);
    }

    path
      ..lineTo(size.width, 0)
      ..close();

    path = path.shift(Offset(0, size.height));

    canvas.drawPath(path, fill);
  }

  void drawHorizontalGridLines(Size size, Canvas canvas) {
    for (var i = 0; i <= hGridLines; i++) {
      final ly = (size.height / hGridLines) * (i + 1);
      final hLine = Path()
        ..moveTo(0, ly)
        ..lineTo(size.width, ly);
      canvas.drawPath(hLine, gridLinePaint);
    }
  }

  void drawVerticalGridLines(Size size, Canvas canvas) {
    for (var i = 0; i <= hGridLines; i++) {
      final lx = (size.width / hGridLines) * i;
      final vLine = Path()
        ..moveTo(lx, 0)
        ..lineTo(lx, size.height);
      canvas.drawPath(vLine, gridLinePaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

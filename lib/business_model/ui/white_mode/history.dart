import 'package:business_Model_App/constant/constant.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  String _value = 'one';
  bool _isChecked = true;
  List history = [
    {
      "product": "Coke",
      "date": "12 jan 2021",
      "quantity": "gram",
      "aantal": "0.3",
      "isSelect": false
    },
    {
      "product": "Coke",
      "date": "12 Feb 2021",
      "quantity": "joints",
      "aantal": "4",
      "isSelect": false
    },
    {
      "product": "Coke",
      "date": "12 Feb 2021",
      "quantity": "joints",
      "aantal": "4",
      "isSelect": false
    },
    {
      "product": "Coke",
      "date": "12 Feb 2021",
      "quantity": "joints",
      "aantal": "4",
      "isSelect": false
    },
    {
      "product": "Coke",
      "date": "12 Feb 2021",
      "quantity": "joints",
      "aantal": "4",
      "isSelect": false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Text(
            'Historie',
            style: TextStyle(color: appColor),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    "Titel",
                    style: TextStyle(
                        color: appColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                      value: _isChecked,
                      onChanged: (bool value) {
                        setState(() {
                          _isChecked = value;
                        });
                      }),
                  DropdownButton<String>(
                    value: _value,
                    items: <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                        child: Text(
                          'Product',
                          style: TextStyle(fontSize: 13),
                        ),
                        value: 'one',
                      ),
                    ],
                    onChanged: (String value) {
                      setState(() => _value = value);
                    },
                  ),
                  DropdownButton<String>(
                    value: _value,
                    items: <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                        child: Text('Datum', style: TextStyle(fontSize: 13)),
                        value: 'one',
                      ),
                    ],
                    onChanged: (String value) {
                      setState(() => _value = value);
                    },
                  ),
                  DropdownButton<String>(
                    value: _value,
                    items: <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                        child:
                            Text('Quantiteit', style: TextStyle(fontSize: 13)),
                        value: 'one',
                      ),
                    ],
                    onChanged: (String value) {
                      setState(() => _value = value);
                    },
                  ),
                  DropdownButton<String>(
                    value: _value,
                    items: <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                        child: Text('Aantal', style: TextStyle(fontSize: 13)),
                        value: 'one',
                      ),
                    ],
                    onChanged: (String value) {
                      setState(() => _value = value);
                    },
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: history.length,
                  itemBuilder: (buildContext, index) {
                    var historyIndex = history[index];
                    return CheckboxListTile(
                      title: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              historyIndex["product"],
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Text(
                              historyIndex["date"],
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              historyIndex["quantity"],
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              historyIndex["aantal"],
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                      value: historyIndex["isSelect"],
                      onChanged: (bool value) {
                        setState(() {
                          historyIndex["isSelect"] = value;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

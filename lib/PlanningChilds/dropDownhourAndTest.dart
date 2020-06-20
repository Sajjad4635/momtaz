import 'package:flutter/material.dart';




class hoursTest extends StatefulWidget {
  hoursTest({Key key}) : super(key: key);

  @override
  _hoursTestState createState() => _hoursTestState();
}

class _hoursTestState extends State<hoursTest> {
  int dropdownValue1 = null;

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.deepPurple),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Center(
              child: DropdownButton<int>(
                hint: Text('ساعت تست'),
                value: dropdownValue1,
//        icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: SizedBox(),
                onChanged: (int newValue) {
                  setState(() {
                    dropdownValue1 = newValue;
                  });
                },
                items: <int>[
                  15,
                  30,
                  45,
                  60,
                  75,
                  90,
                  105,
                  120,
                ].map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              ),
            )
        ));
  }
}

class numOfTests extends StatefulWidget {
  numOfTests({Key key}) : super(key: key);

  @override
  _numOfTestsState createState() => _numOfTestsState();
}

class _numOfTestsState extends State<numOfTests> {
  int dropdownValue2 = null;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: Colors.deepPurple),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Center(
            child: Directionality(
          textDirection: TextDirection.rtl,
          child: DropdownButton<int>(
            hint: Text('تعداد تست'),
            value: dropdownValue2,
//        icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.deepPurple),
            underline: SizedBox(),
            onChanged: (int newValue) {
              setState(() {
                dropdownValue2 = newValue;
              });
            },
            items: <int>[
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
            ].map<DropdownMenuItem<int>>((int value) {
              return DropdownMenuItem<int>(
                value: value,
                child: Text(value.toString()),
              );
            }).toList(),
          ),
        )),
      ),
    );
  }
}

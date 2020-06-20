import 'package:flutter/material.dart';

class zang1 extends StatefulWidget {
  zang1({Key key}) : super(key: key);
  @override
  _zang1State createState() => _zang1State();
}

class _zang1State extends State<zang1> {
  String dropdownValue = null;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButton<String>(
        hint: Text('زنگ اول'),
        value: dropdownValue,
//        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          "ریاضی",
          "فیزیک",
          "شیمی",
          "ادبیات",
          "عربی",
          "زبان انگلیسی",
          "تعلیمات دینی",
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}


class zang2 extends StatefulWidget {
  zang2({Key key}) : super(key: key);
  @override
  _zang2State createState() => _zang2State();
}

class _zang2State extends State<zang2> {
  String dropdownValue = null;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButton<String>(
        hint: Text('زنگ دوم'),
        value: dropdownValue,
//        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          "ریاضی",
          "فیزیک",
          "شیمی",
          "ادبیات",
          "عربی",
          "زبان انگلیسی",
          "تعلیمات دینی",
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}


class zang3 extends StatefulWidget {
  zang3({Key key}) : super(key: key);
  @override
  _zang3State createState() => _zang3State();
}

class _zang3State extends State<zang3> {
  String dropdownValue = null;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButton<String>(
        hint: Text('زنگ سوم'),
        value: dropdownValue,
//        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          "ریاضی",
          "فیزیک",
          "شیمی",
          "ادبیات",
          "عربی",
          "زبان انگلیسی",
          "تعلیمات دینی",
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}


class zang4 extends StatefulWidget {
  zang4({Key key}) : super(key: key);
  @override
  _zang4State createState() => _zang4State();
}

class _zang4State extends State<zang4> {
  String dropdownValue = null;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButton<String>(
        hint: Text('زنگ چهارم'),
        value: dropdownValue,
//        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          "ریاضی",
          "فیزیک",
          "شیمی",
          "ادبیات",
          "عربی",
          "زبان انگلیسی",
          "تعلیمات دینی",
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class zang5 extends StatefulWidget {
  zang5({Key key}) : super(key: key);
  @override
  _zang5State createState() => _zang5State();
}

class _zang5State extends State<zang5> {
  String dropdownValue = null;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButton<String>(
        hint: Text('زنگ پنجم'),
        value: dropdownValue,
//        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          "ریاضی",
          "فیزیک",
          "شیمی",
          "ادبیات",
          "عربی",
          "زبان انگلیسی",
          "تعلیمات دینی",
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

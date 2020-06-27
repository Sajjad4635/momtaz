import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mmtaz/Screens/planningOffice.dart';
import 'package:mmtaz/models/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Khodnevisi1 extends StatefulWidget {
  int toDay, clickDay;

  Khodnevisi1(this.toDay, this.clickDay);

  @override
  _Khodnevisi1State createState() => _Khodnevisi1State(toDay, clickDay);
}

class _Khodnevisi1State extends State<Khodnevisi1> {
  int toDay, clickDay;

  _Khodnevisi1State(this.toDay, this.clickDay);

  @override
  Widget build(BuildContext context) {
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;
    return getep.isEmpty
        ? CircularProgressIndicator()
        : MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('وارد کردن ساعات مطالعاتی'),
            centerTitle: true,
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('نام درس'),
                    Text('ساعت مطالعه'),
                    Text('ساعت تست'),
                    Text('تعداد تست'),
                  ],
                ),
              ),
              Expanded(
                  flex: 8,
                  child: ListView.builder(
                    itemCount: getep.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Container(
                            width: pageWidth - 5.0,
                            height: pageHeight / 9,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Text('${getep[index].title}'),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Expanded(
                                  flex: 8,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    reverse: true,
                                    children: <Widget>[
                                      Container(
                                        width: 120.0,
                                        child: Center(
                                          child: hours(
                                            id: index,
                                            n_Dd: 1,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Container(
                                        width: 120.0,
                                        child: Center(
                                          child: hours(
                                            id: index,
                                            n_Dd: 2,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Container(
                                        width: 120.0,
                                        child: Center(
                                          child: numTest(
                                            id: index,
                                            n_Dd: 3,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      );
                    },
                  )),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    sendDataToServer();
                  },
                  child: Container(
                    child: Center(
                      child: Text('تایید'),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }

  sendDataToServer() async {
    for (int i = 0; i < getep.length; i++) {
      twoDList[i][0] = getep[i].id;
    }
    print(twoDList);
    print('${widget.toDay}');
    print('${widget.clickDay}');
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var token = prefs.getString('myIp_token');
    var response =
    await http.post(api.siteName + '/api/send_edu', body: {
      "data": twoDList.toString(),
      "token": '${token}',
      "time": (new DateTime.now().millisecondsSinceEpoch / 1000).toString(),
      "toDay": '${widget.toDay}',
      "clickDay": '${widget.clickDay}'
    });
    print(response.statusCode);
  }
}

class hours extends StatefulWidget {
//  hours({Key key}) : super(key: key);
  int id;
  int n_Dd;

  hours({Key key, this.id, this.n_Dd}) : super(key: key);

  @override
  _hoursState createState() => _hoursState(id, n_Dd);
}

class _hoursState extends State<hours> {
  int id;
  int n_Dd;

  _hoursState(this.id, this.n_Dd);

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
                hint: Text('0'),
                value: dropdownValue1,
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: SizedBox(),
                onChanged: (int newValue) {
                  setState(() {
                    dropdownValue1 = newValue;
                    sendValue(widget.id, widget.n_Dd);
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
            )));
  }

  sendValue(var tit, var nDd) {
    print(dropdownValue1);
    print('${getep[tit].id}');
    print(tit);
    print(nDd);
    setState(() {
      twoDList[tit][nDd] = dropdownValue1;
      twoDList[tit][0] = getep[tit].id;
    });
  }
}

class hoursTest extends StatefulWidget {
//  hours({Key key}) : super(key: key);
  int id;
  int n_Dd;

  hoursTest({Key key, this.id, this.n_Dd}) : super(key: key);

  @override
  _hoursTestState createState() => _hoursTestState(id, n_Dd);
}

class _hoursTestState extends State<hoursTest> {
  int id;
  int n_Dd;

  _hoursTestState(this.id, this.n_Dd);

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
                hint: Text('0'),
                value: dropdownValue1,
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: SizedBox(),
                onChanged: (int newValue) {
                  setState(() {
                    dropdownValue1 = newValue;
                    sendValue(widget.id, widget.n_Dd);
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
            )));
  }

  sendValue(var tit, var nDd) {
    print(dropdownValue1);
    print('${getep[tit].id}');
    print(tit);
    print(nDd);
    setState(() {
      twoDList[tit][nDd] = dropdownValue1;
      twoDList[tit][0] = getep[tit].id;
    });
  }
}

class numTest extends StatefulWidget {
//  hours({Key key}) : super(key: key);
  int id;
  int n_Dd;

  numTest({Key key, this.id, this.n_Dd}) : super(key: key);

  @override
  _numTestState createState() => _numTestState(id, n_Dd);
}

class _numTestState extends State<numTest> {
  int id;
  int n_Dd;

  _numTestState(this.id, this.n_Dd);

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
                hint: Text('0'),
                value: dropdownValue1,
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: SizedBox(),
                onChanged: (int newValue) {
                  setState(() {
                    dropdownValue1 = newValue;
                    sendValue(widget.id, widget.n_Dd);
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
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  31,
                  32,
                  33,
                  34,
                  35,
                  36,
                  37,
                  38,
                  39,
                  40,
                  41,
                  42,
                  43,
                  44,
                  45,
                  46,
                  47,
                  48,
                  49,
                  50
                ].map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              ),
            )));
  }

  sendValue(var tit, var nDd) {
    print(dropdownValue1);
    print('${getep[tit].id}');
    print(tit);
    print(nDd);
    setState(() {
      twoDList[tit][nDd] = dropdownValue1;
      twoDList[tit][0] = getep[tit].id;
    });
  }
}

class khodnevisiDisable extends StatefulWidget {
  @override
  _khodnevisiDisableState createState() => _khodnevisiDisableState();
}

class _khodnevisiDisableState extends State<khodnevisiDisable> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: Text('نام درس'),
                        ),
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Expanded(
                        child: Center(
                          child: Text('ساعت مطالعاتی'),
                        ),
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Expanded(
                        child: Center(
                          child: Text('ساعت تست'),
                        ),
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Expanded(
                        child: Center(
                          child: Text('تعداد تست'),
                        ),
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: ListView.builder(
                  itemCount: getep.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        height: 70.0,
                        child: Row(
                          textDirection: TextDirection.rtl,
                          children: <Widget>[
                            Expanded(
                              child: Center(
                                child: Text('${getep[index].title}'),
                              ),
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Expanded(
                              child: Center(
                                child: Text('75'),
                              ),
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Expanded(
                              child: Center(
                                child: Text('60'),
                              ),
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Expanded(
                              child: Center(
                                child: Text('40'),
                              ),
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}

class zoodeh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('امروز هنوز نیومده!!!', textDirection: TextDirection.rtl,),
        ),
      ),
    );
  }
}

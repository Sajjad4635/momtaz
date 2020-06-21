import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mmtaz/models/khodnevisiModel.dart';
import 'package:mmtaz/models/lessonModel.dart';

List<testModel> lesson = [];
String date;
String day;

int row = lesson.length;
int col = 4;
var twoDList = List.generate(row, (i) => List(col), growable: false);

class Khodnevisi extends StatefulWidget {
  List<Lesson_Model> lessonList = [];

  Khodnevisi(this.lessonList);

  @override
  _KhodnevisiState createState() => _KhodnevisiState(lessonList);
}

class _KhodnevisiState extends State<Khodnevisi> {
  List<Lesson_Model> lessonList = [];

  _KhodnevisiState(this.lessonList);

  @override
  Widget build(BuildContext context) {
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
          body: Column(
        children: <Widget>[
          Expanded(
              flex: 9,
              child: ListView.builder(
                itemCount: lessonList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                        width: pageWidth - 5.0,
                        height: pageHeight / 9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          textDirection: TextDirection.rtl,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Text('${lessonList[index].title}'),
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
                                      child: hours(
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
    var response =
        await http.post('http://192.168.1.103:8080/api/send_edu', body: {
      "data": twoDList.toString(),
      "token": '888;27',
      "time": (new DateTime.now().millisecondsSinceEpoch / 1000).toString()
    });
    print(response.statusCode);
    print(response.body);

    for (int i = 0; i < lesson.length; i++) {
      twoDList[i][0] = lesson[i].id;
    }
    print(twoDList);
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
                hint: Text('ساعت مطالعه'),
                value: dropdownValue1,
//        icon: Icon(Icons.arrow_downward),
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
    print('${lesson[tit].id}');
    print(tit);
    print(nDd);
    twoDList[tit][nDd] = dropdownValue1;
    twoDList[tit][0] = lesson[tit].id;
  }
}

//
//class khodnevisiDisable extends StatefulWidget {
//  @override
//  _khodnevisiDisableState createState() => _khodnevisiDisableState();
//}
//
//class _khodnevisiDisableState extends State<khodnevisiDisable> {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowMaterialGrid: false,
//      home: Scaffold(
//          body: Column(
//        children: <Widget>[
//          Expanded(
//            flex: 1,
//            child: Container(
//              child: Row(
//                textDirection: TextDirection.rtl,
//                children: <Widget>[
//                  Expanded(
//                    child: Center(
//                      child: Text('نام درس'),
//                    ),
//                  ),
//                  SizedBox(
//                    width: 3.0,
//                  ),
//                  Expanded(
//                    child: Center(
//                      child: Text('ساعت مطالعاتی'),
//                    ),
//                  ),
//                  SizedBox(
//                    width: 3.0,
//                  ),
//                  Expanded(
//                    child: Center(
//                      child: Text('ساعت تست'),
//                    ),
//                  ),
//                  SizedBox(
//                    width: 3.0,
//                  ),
//                  Expanded(
//                    child: Center(
//                      child: Text('تعداد تست'),
//                    ),
//                  ),
//                  SizedBox(
//                    width: 3.0,
//                  ),
//                ],
//              ),
//            ),
//          ),
//          Expanded(
//            flex: 9,
//            child: ListView.builder(
//              itemCount: myList.length,
//              itemBuilder: (context, index){
//                return Card(
//                  child: Container(
//                    height: 70.0,
//                    child: Row(
//                      textDirection: TextDirection.rtl,
//                      children: <Widget>[
//                        Expanded(
//                          child: Center(
//                            child: Text('${myList[index]}'),
//                          ),
//                        ),
//                        SizedBox(
//                          width: 3.0,
//                        ),
//                        Expanded(
//                          child: Center(
//                            child: Text('75'),
//                          ),
//                        ),
//                        SizedBox(
//                          width: 3.0,
//                        ),
//                        Expanded(
//                          child: Center(
//                            child: Text('60'),
//                          ),
//                        ),
//                        SizedBox(
//                          width: 3.0,
//                        ),
//                        Expanded(
//                          child: Center(
//                            child: Text('40'),
//                          ),
//                        ),
//                        SizedBox(
//                          width: 3.0,
//                        ),
//                      ],
//                    ),
//                  ),
//                );
//              },
//            ),
//          )
//        ],
//      )),
//    );
//  }
//}
//
//class zoodeh extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.center,
//      crossAxisAlignment: CrossAxisAlignment.center,
//      children: <Widget>[
//        Center(
//          child: Text(
//            'امروز هنوز نیومده!!!',
//            textDirection: TextDirection.rtl,
//          ),
//        )
//      ],
//    );
//  }
//}

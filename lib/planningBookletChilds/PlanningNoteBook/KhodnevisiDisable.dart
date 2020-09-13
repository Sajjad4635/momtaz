import 'package:flutter/material.dart';
import 'package:mmtaz/planningBookletChilds/PlanningNoteBook/fechplenningnotebook.dart';
import 'package:mmtaz/planningBookletChilds/PlanningNoteBook/planningNoteBookModel.dart';
import 'package:mmtaz/widgets/LoadingPage.dart';
import 'package:mmtaz/widgets/Setting.dart';

List<getLessonModle> getLessonsDetail = [];
var flagKhodnevisiDisable = 0;

class khodnevisiDisable extends StatefulWidget {
  int toDay, clickDay;
  var dayTitle;

  khodnevisiDisable(this.toDay, this.clickDay, this.dayTitle);

  @override
  _khodnevisiDisableState createState() =>
      _khodnevisiDisableState(toDay, clickDay, dayTitle);
}

class _khodnevisiDisableState extends State<khodnevisiDisable> {
  int toDay, clickDay;
  var dayTitle;

  _khodnevisiDisableState(this.toDay, this.clickDay, this.dayTitle);

  @override
  Widget build(BuildContext context) {
    setState(() {
      if (flagKhodnevisiDisable == 0) {
        getLessonsDetail.clear();
        getKhodnevisiDetail(clickDay);
        flagKhodnevisiDisable = 1;
      }
    });

    return getLessonsDetail.isEmpty
        ? LoadingPage()
        : SafeArea(
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                  backgroundColor: Color(0xffEAEAEA),
                  body: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffEAEAEA),
                          ),
                          child: Container(
                            padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.height / 32,
                                left: MediaQuery.of(context).size.height / 32),
                            decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(45.0),
                                    bottomRight: Radius.circular(45.0))),
                            child: Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '${dayTitle.toString()}',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      fontFamily: 'Aviny', color: Colors.white),
                                ),
                                Text(
                                  '99/2/14',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      fontFamily: 'Aviny', color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width / 50),
                          decoration: BoxDecoration(
                            color: Color(0xffEAEAEA),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                color: color,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(45.0))),
                            child: Row(
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'نام درس',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'ساعت مطالعاتی',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'ساعت تست',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'تعداد تست',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: ListView.builder(
                          itemCount: getLessonsDetail.length,
                          itemBuilder: (context, index) {
                            return Container(
                              color: Color(0xffEAEAEA),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 10,
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: <Widget>[
                                        Expanded(
                                          child: Center(
                                            child: Text(
                                              '${getLessonsDetail[index].lessonName}',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'Aviny',
                                                  fontSize: 19.0,
                                                  color: Colors.black54),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3.0,
                                        ),
                                        Expanded(
                                          child: Center(
                                            child: Text(
                                              getLessonsDetail[index]
                                                          .study_time ==
                                                      null
                                                  ? '0:00'
                                                  : '${getLessonsDetail[index].study_time.replaceAll('.', ':')}',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'Aviny',
                                                  fontSize: 19.0,
                                                  color: Colors.black54),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3.0,
                                        ),
                                        Expanded(
                                          child: Center(
                                            child: Text(
                                              getLessonsDetail[index]
                                                          .test_time ==
                                                      null
                                                  ? '0:00'
                                                  : '${getLessonsDetail[index].test_time.replaceAll('.', ':')}',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'Aviny',
                                                  fontSize: 19.0,
                                                  color: Colors.black54),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3.0,
                                        ),
                                        Expanded(
                                          child: Center(
                                            child: Text(
                                              getLessonsDetail[index]
                                                          .test_num ==
                                                      null
                                                  ? '0'
                                                  : '${getLessonsDetail[index].test_num}',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'Aviny',
                                                  fontSize: 19.0,
                                                  color: Colors.black54),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width /
                                          12,
                                      right: MediaQuery.of(context).size.width /
                                          12,
                                    ),
                                    height: 0.5,
                                    color: color,
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  )),
            ),
          );
  }

  getKhodnevisiDetail(clickDay) async {
    var response =
        await get_Khodnevisi_Info.get_khodnevisi_info(toDay, clickDay);
    setState(() {
      getLessonsDetail.clear();
      getLessonsDetail.addAll(response['getKhodnevisiDetail']);
    });
  }
}

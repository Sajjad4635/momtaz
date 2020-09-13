import 'package:flutter/material.dart';
import 'package:mmtaz/Screens/HomePage.dart';
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/planningBookletChilds/PlanningNoteBook/daysOfWeek.dart';
import 'package:mmtaz/planningBookletChilds/PlanningNoteBook/fechplenningnotebook.dart';
import 'package:mmtaz/planningBookletChilds/PlanningNoteBook/planningNoteBookModel.dart';
import 'package:mmtaz/widgets/LoadingPage.dart';
import 'package:mmtaz/widgets/Setting.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:shared_preferences/shared_preferences.dart';

DateTime h_Test = DateTime(0);
DateTime h_Read = DateTime(0);
List<getLessonModle> getLessonsDetail = [];
var flagKhodnevisienable = 0;
var arrSendLessonDetails =
    List.generate(getLessonsDetail.length, (i) => List(4), growable: false);

class KhodnevisiEnable extends StatefulWidget {
  int toDay, clickDay;
  var dayTitle;

  KhodnevisiEnable(this.toDay, this.clickDay, this.dayTitle);

  @override
  _KhodnevisiEnableState createState() =>
      _KhodnevisiEnableState(toDay, clickDay, dayTitle);
}

class _KhodnevisiEnableState extends State<KhodnevisiEnable> {
  int toDay, clickDay;
  var dayTitle;

  _KhodnevisiEnableState(
      this.toDay, this.clickDay, this.dayTitle);

  @override
  Widget build(BuildContext context) {
    setState(() {
      if (flagKhodnevisienable == 0) {
        getLessonsDetail.clear();
        getKhodnevisiDetail(clickDay);
        flagKhodnevisienable = 1;
      }
    });

    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;

    return getLessonsDetail.isEmpty
        ? LoadingPage()
        : SafeArea(
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                  resizeToAvoidBottomInset: false,
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
                                  '${dayTitle.toString()}',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      fontFamily: 'Aviny', color: color),
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
                      Container(
                          child: Center(
                        child: Text(
                          'برای تغییر دادن هر آیتم روش کلیک کن!',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Aviny',
                              color: Colors.black54,
                              fontSize: 18.0),
                        ),
                      )),
                      Expanded(
                          flex: 7,
                          child: Container(
                            child: ListView.builder(
                              itemCount: getLessonsDetail.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xffEAEAEA)),
                                      child: Container(
                                          padding: EdgeInsets.all(0.0),
                                          margin: EdgeInsets.all(0.0),
                                          width: pageWidth - 5.0,
                                          height: pageHeight / 9,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            textDirection: TextDirection.rtl,
                                            children: <Widget>[
                                              Expanded(
                                                flex: 3,
                                                child: Center(
                                                  child: Text(
                                                    '${getLessonsDetail[index].lessonName}',
                                                    textDirection:
                                                        TextDirection.rtl,
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
                                                flex: 2,
                                                child: InkWell(
                                                  onTap: () {
                                                    H_Read(index);
                                                  },
                                                  child: Container(
                                                    width: pageWidth / 4,
                                                    child: Center(
                                                        child: Text(getLessonsDetail[
                                                                        index]
                                                                    .study_time ==
                                                                null
                                                            ? '0:00'
                                                            : '${getLessonsDetail[index].study_time.replaceAll('.', ':')}')),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: InkWell(
                                                  onTap: () {
                                                    H_Test(index);
                                                  },
                                                  child: Container(
                                                    width: pageWidth / 4,
                                                    child: Center(
                                                        child: Text(getLessonsDetail[
                                                                        index]
                                                                    .test_time ==
                                                                null
                                                            ? '0:00'
                                                            : '${getLessonsDetail[index].test_time.replaceAll('.', ':')}')),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 3,
                                                  child: InkWell(
                                                    onTap: () {
//                                                    Num_Test(index);
                                                    },
                                                    child: Directionality(
                                                        textDirection:
                                                            TextDirection.rtl,
                                                        child: Container(
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            20.0))),
                                                            child: Center(
                                                              child:
                                                                  DropdownButton<
                                                                      int>(
                                                                hint: Text(
                                                                  getLessonsDetail[index]
                                                                              .test_num ==
                                                                          null
                                                                      ? '0'
                                                                      : '${getLessonsDetail[index].test_num}',
                                                                  textDirection:
                                                                      TextDirection
                                                                          .rtl,
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'Aviny',
                                                                      fontSize:
                                                                          19.0,
                                                                      color: Colors
                                                                          .black54),
                                                                ),
                                                                iconSize: 24,
                                                                elevation: 16,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black54),
                                                                underline:
                                                                    SizedBox(),
                                                                onChanged: (int
                                                                    newValue) {
                                                                  setState(() {
                                                                    getLessonsDetail[index]
                                                                            .test_num =
                                                                        '${newValue.toString()}';
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
                                                                  50,
                                                                  50,
                                                                  51,
                                                                  52,
                                                                  53,
                                                                  54,
                                                                  55,
                                                                  56,
                                                                  57,
                                                                  58,
                                                                  59,
                                                                  60,
                                                                  61,
                                                                  62,
                                                                  63,
                                                                  64,
                                                                  65,
                                                                  66,
                                                                  67,
                                                                  68,
                                                                  69,
                                                                  70,
                                                                  71,
                                                                  72,
                                                                  73,
                                                                  74,
                                                                  75,
                                                                  76,
                                                                  77,
                                                                  78,
                                                                  79,
                                                                  80,
                                                                  81,
                                                                  82,
                                                                  83,
                                                                  84,
                                                                  85,
                                                                  86,
                                                                  87,
                                                                  88,
                                                                  89,
                                                                  90,
                                                                  91,
                                                                  92,
                                                                  93,
                                                                  94,
                                                                  95,
                                                                  96,
                                                                  97,
                                                                  98,
                                                                  99,
                                                                  100,
                                                                  101,
                                                                  102,
                                                                  103,
                                                                  104,
                                                                  105,
                                                                  106,
                                                                  107,
                                                                  108,
                                                                  109,
                                                                  110,
                                                                  111,
                                                                  112,
                                                                  113,
                                                                  114,
                                                                  115,
                                                                  116,
                                                                  117,
                                                                  118,
                                                                  119,
                                                                  120,
                                                                  121,
                                                                  122,
                                                                  123,
                                                                  124,
                                                                  125,
                                                                  126,
                                                                  127,
                                                                  128,
                                                                  129,
                                                                  130,
                                                                  131,
                                                                  132,
                                                                  133,
                                                                  134,
                                                                  135,
                                                                  136,
                                                                  137,
                                                                  138,
                                                                  139,
                                                                  140,
                                                                  141,
                                                                  142,
                                                                  143,
                                                                  144,
                                                                  145,
                                                                  146,
                                                                  147,
                                                                  148,
                                                                  149,
                                                                  150,
                                                                  150,
                                                                  151,
                                                                  152,
                                                                  153,
                                                                  154,
                                                                  155,
                                                                  156,
                                                                  157,
                                                                  158,
                                                                  159,
                                                                  160,
                                                                  161,
                                                                  162,
                                                                  163,
                                                                  164,
                                                                  165,
                                                                  166,
                                                                  167,
                                                                  168,
                                                                  169,
                                                                  170,
                                                                  171,
                                                                  172,
                                                                  173,
                                                                  174,
                                                                  175,
                                                                  176,
                                                                  177,
                                                                  178,
                                                                  179,
                                                                  180,
                                                                  181,
                                                                  182,
                                                                  183,
                                                                  184,
                                                                  185,
                                                                  186,
                                                                  187,
                                                                  188,
                                                                  189,
                                                                  190,
                                                                  191,
                                                                  192,
                                                                  193,
                                                                  194,
                                                                  195,
                                                                  196,
                                                                  197,
                                                                  198,
                                                                  199,
                                                                  200,
                                                                  201,
                                                                  202,
                                                                  203,
                                                                  204,
                                                                  205,
                                                                  206,
                                                                  207,
                                                                  208,
                                                                  209,
                                                                  210,
                                                                  211,
                                                                  212,
                                                                  213,
                                                                  214,
                                                                  215,
                                                                  216,
                                                                  217,
                                                                  218,
                                                                  219,
                                                                  220,
                                                                  221,
                                                                  222,
                                                                  223,
                                                                  224,
                                                                  225,
                                                                  226,
                                                                  227,
                                                                  228,
                                                                  229,
                                                                  230,
                                                                  231,
                                                                  232,
                                                                  233,
                                                                  234,
                                                                  235,
                                                                  236,
                                                                  237,
                                                                  238,
                                                                  239,
                                                                  240,
                                                                  241,
                                                                  242,
                                                                  243,
                                                                  244,
                                                                  245,
                                                                  246,
                                                                  247,
                                                                  248,
                                                                  249,
                                                                  250,
                                                                  250,
                                                                  251,
                                                                  252,
                                                                  253,
                                                                  254,
                                                                  255,
                                                                  256,
                                                                  257,
                                                                  258,
                                                                  259,
                                                                  260,
                                                                  261,
                                                                  262,
                                                                  263,
                                                                  264,
                                                                  265,
                                                                  266,
                                                                  267,
                                                                  268,
                                                                  269,
                                                                  270,
                                                                  271,
                                                                  272,
                                                                  273,
                                                                  274,
                                                                  275,
                                                                  276,
                                                                  277,
                                                                  278,
                                                                  279,
                                                                  280,
                                                                  281,
                                                                  282,
                                                                  283,
                                                                  284,
                                                                  285,
                                                                  286,
                                                                  287,
                                                                  288,
                                                                  289,
                                                                  290,
                                                                  291,
                                                                  292,
                                                                  293,
                                                                  294,
                                                                  295,
                                                                  296,
                                                                  297,
                                                                  298,
                                                                  299,
                                                                  300
                                                                ].map<
                                                                    DropdownMenuItem<
                                                                        int>>((int
                                                                    value) {
                                                                  return DropdownMenuItem<
                                                                      int>(
                                                                    value:
                                                                        value,
                                                                    child: Text(
                                                                        value
                                                                            .toString()),
                                                                  );
                                                                }).toList(),
                                                              ),
                                                            ))),
                                                  ))
                                            ],
                                          )),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width /
                                                12,
                                        right:
                                            MediaQuery.of(context).size.width /
                                                12,
                                      ),
                                      height: 0.5,
                                      color: color,
                                    )
                                  ],
                                );
                              },
                            ),
                          )),
                      Expanded(
                        flex: 1,
                        child: Container(
//                  width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(color: Color(0xffEAEAEA)),
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 50,
                                  bottom:
                                      MediaQuery.of(context).size.height / 50),
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                  color: color,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(45.0))),
                              child: InkWell(
                                onTap: () {
                                  for (int i = 0;
                                      i < getLessonsDetail.length;
                                      i++) {
                                    arrSendLessonDetails[i][0] =
                                        getLessonsDetail[i].lesson_id;
                                    arrSendLessonDetails[i][1] =
                                        getLessonsDetail[i].study_time;
                                    arrSendLessonDetails[i][2] =
                                        getLessonsDetail[i].test_time;
                                    arrSendLessonDetails[i][3] =
                                        getLessonsDetail[i].test_num;
                                  }
                                  sendArrSendLessonDetails();
                                },
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      'تایید',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            )),
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

  H_Read(int id) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            //this right here
            child: Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 30),
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: const Offset(0.0, 10.0),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // To make the card compact
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'ساعت',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'Aviny',
                            color: color,
                            fontSize: 25.0,
                          ),
                        ),
                        Text(
                          'دقیقه',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'Aviny',
                            color: color,
                            fontSize: 25.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xffeaeaea),
                    child: Center(
                      child: TimePickerSpinner(
                        time: DateTime(0),
                        is24HourMode: true,
                        normalTextStyle:
                            TextStyle(fontSize: 24, color: Colors.black54),
                        highlightedTextStyle:
                            TextStyle(fontSize: 24, color: color),
                        spacing: 50,
                        itemHeight: 80,
                        isForce2Digits: true,
                        onTimeChange: (time) {
                          setState(() {
                            h_Read = time;
                          });
                        },
                      ),
                    ),
                  ),
                  InkWell(
                      child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 50,
                        bottom: MediaQuery.of(context).size.height / 50),
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.all(Radius.circular(45.0))),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getLessonsDetail[id].study_time =
                              '${h_Read.hour}' + ':' + '${h_Read.minute}';
                        });
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'تایید',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'Aviny',
                                fontSize: 17.0,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            ),
          );
        });
  }

  H_Test(int id) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            //this right here
            child: Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 30),
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: const Offset(0.0, 10.0),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // To make the card compact
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'ساعت',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'Aviny',
                            color: color,
                            fontSize: 25.0,
                          ),
                        ),
                        Text(
                          'دقیقه',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'Aviny',
                            color: color,
                            fontSize: 25.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xffeaeaea),
                    child: Center(
                      child: TimePickerSpinner(
                        time: DateTime(0),
                        is24HourMode: true,
                        normalTextStyle:
                            TextStyle(fontSize: 24, color: Colors.black54),
                        highlightedTextStyle:
                            TextStyle(fontSize: 24, color: color),
                        spacing: 50,
                        itemHeight: 80,
                        isForce2Digits: true,
                        onTimeChange: (time) {
                          setState(() {
                            h_Test = time;
                          });
                        },
                      ),
                    ),
                  ),
                  InkWell(
                      child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 50,
                        bottom: MediaQuery.of(context).size.height / 50),
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.all(Radius.circular(45.0))),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getLessonsDetail[id].test_time =
                              '${h_Test.hour}' + ':' + '${h_Test.minute}';
                        });
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'تایید',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'Aviny',
                                fontSize: 17.0,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            ),
          );
        });
  }

  sendArrSendLessonDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    print('${prefs.getString('myIp_token')}');
    print('${toDay.toString()}');
    print('${clickDay.toString()}');
    print(arrSendLessonDetails);
    print('${globalWeekId.toString()}');

    var response = await http.post(api.siteName + '/api/send_edu', body: {
      "data": arrSendLessonDetails.toString(),
      "token": '${prefs.getString('myIp_token')}',
      "toDay": '${toDay.toString()}',
      "clickDay": '${clickDay.toString()}',
      "week_id": '${globalWeekId.toString()}',
    });
    print(response.statusCode);
    print(response.body);
  }
}
//
//class numTest extends StatefulWidget {
////  hours({Key key}) : super(key: key);
//  int id;
//  String title;
//
//  numTest({Key key, this.id, this.title}) : super(key: key);
//
//  @override
//  _numTestState createState() => _numTestState(id, title);
//}
//
//class _numTestState extends State<numTest> {
//  int id;
//  String title;
//
//  _numTestState(this.id, this.title);
//
//  int dropdownValue1 = null;
//
//  @override
//  Widget build(BuildContext context) {
//    return Directionality(
//        textDirection: TextDirection.rtl,
//        child: Container(
//            decoration: BoxDecoration(
//                borderRadius: BorderRadius.all(Radius.circular(20.0))),
//            child: Center(
//              child: DropdownButton<int>(
//                hint: Text(
//                  widget.title,
//                  textDirection: TextDirection.rtl,
//                  style: TextStyle(
//                      fontFamily: 'Aviny',
//                      fontSize: 19.0,
//                      color: Colors.black54),
//                ),
//                iconSize: 24,
//                elevation: 16,
//                style: TextStyle(color: Colors.black54),
//                underline: SizedBox(),
//                onChanged: (int newValue) {
//                  setState(() {
//                    getLessonsDetail[id].test_num = '${newValue.toString()}';
//                  });
//                },
//                items: <int>[
//                  1,
//                  2,
//                  3,
//                  4,
//                  5,
//                  6,
//                  7,
//                  8,
//                  9,
//                  10,
//                  11,
//                  12,
//                  13,
//                  14,
//                  15,
//                  16,
//                  17,
//                  18,
//                  19,
//                  20,
//                  21,
//                  22,
//                  23,
//                  24,
//                  25,
//                  26,
//                  27,
//                  28,
//                  29,
//                  30,
//                  31,
//                  32,
//                  33,
//                  34,
//                  35,
//                  36,
//                  37,
//                  38,
//                  39,
//                  40,
//                  41,
//                  42,
//                  43,
//                  44,
//                  45,
//                  46,
//                  47,
//                  48,
//                  49,
//                  50,
//                  50,
//                  51,
//                  52,
//                  53,
//                  54,
//                  55,
//                  56,
//                  57,
//                  58,
//                  59,
//                  60,
//                  61,
//                  62,
//                  63,
//                  64,
//                  65,
//                  66,
//                  67,
//                  68,
//                  69,
//                  70,
//                  71,
//                  72,
//                  73,
//                  74,
//                  75,
//                  76,
//                  77,
//                  78,
//                  79,
//                  80,
//                  81,
//                  82,
//                  83,
//                  84,
//                  85,
//                  86,
//                  87,
//                  88,
//                  89,
//                  90,
//                  91,
//                  92,
//                  93,
//                  94,
//                  95,
//                  96,
//                  97,
//                  98,
//                  99,
//                  100,
//                  101,
//                  102,
//                  103,
//                  104,
//                  105,
//                  106,
//                  107,
//                  108,
//                  109,
//                  110,
//                  111,
//                  112,
//                  113,
//                  114,
//                  115,
//                  116,
//                  117,
//                  118,
//                  119,
//                  120,
//                  121,
//                  122,
//                  123,
//                  124,
//                  125,
//                  126,
//                  127,
//                  128,
//                  129,
//                  130,
//                  131,
//                  132,
//                  133,
//                  134,
//                  135,
//                  136,
//                  137,
//                  138,
//                  139,
//                  140,
//                  141,
//                  142,
//                  143,
//                  144,
//                  145,
//                  146,
//                  147,
//                  148,
//                  149,
//                  150,
//                  150,
//                  151,
//                  152,
//                  153,
//                  154,
//                  155,
//                  156,
//                  157,
//                  158,
//                  159,
//                  160,
//                  161,
//                  162,
//                  163,
//                  164,
//                  165,
//                  166,
//                  167,
//                  168,
//                  169,
//                  170,
//                  171,
//                  172,
//                  173,
//                  174,
//                  175,
//                  176,
//                  177,
//                  178,
//                  179,
//                  180,
//                  181,
//                  182,
//                  183,
//                  184,
//                  185,
//                  186,
//                  187,
//                  188,
//                  189,
//                  190,
//                  191,
//                  192,
//                  193,
//                  194,
//                  195,
//                  196,
//                  197,
//                  198,
//                  199,
//                  200,
//                  201,
//                  202,
//                  203,
//                  204,
//                  205,
//                  206,
//                  207,
//                  208,
//                  209,
//                  210,
//                  211,
//                  212,
//                  213,
//                  214,
//                  215,
//                  216,
//                  217,
//                  218,
//                  219,
//                  220,
//                  221,
//                  222,
//                  223,
//                  224,
//                  225,
//                  226,
//                  227,
//                  228,
//                  229,
//                  230,
//                  231,
//                  232,
//                  233,
//                  234,
//                  235,
//                  236,
//                  237,
//                  238,
//                  239,
//                  240,
//                  241,
//                  242,
//                  243,
//                  244,
//                  245,
//                  246,
//                  247,
//                  248,
//                  249,
//                  250,
//                  250,
//                  251,
//                  252,
//                  253,
//                  254,
//                  255,
//                  256,
//                  257,
//                  258,
//                  259,
//                  260,
//                  261,
//                  262,
//                  263,
//                  264,
//                  265,
//                  266,
//                  267,
//                  268,
//                  269,
//                  270,
//                  271,
//                  272,
//                  273,
//                  274,
//                  275,
//                  276,
//                  277,
//                  278,
//                  279,
//                  280,
//                  281,
//                  282,
//                  283,
//                  284,
//                  285,
//                  286,
//                  287,
//                  288,
//                  289,
//                  290,
//                  291,
//                  292,
//                  293,
//                  294,
//                  295,
//                  296,
//                  297,
//                  298,
//                  299,
//                  300
//                ].map<DropdownMenuItem<int>>((int value) {
//                  return DropdownMenuItem<int>(
//                    value: value,
//                    child: Text(value.toString()),
//                  );
//                }).toList(),
//              ),
//            )));
//  }
//}

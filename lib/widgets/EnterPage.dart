import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/WeeklySchedule.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Enter_page extends StatefulWidget {
  @override
  _Enter_pageState createState() => _Enter_pageState();
}

class _Enter_pageState extends State<Enter_page> {
//  var controller = TextEditingController();
//  var controller2 = TextEditingController();
//  var controller3 = TextEditingController();
//  var controller4 = TextEditingController();
//  var controller5 = TextEditingController();
//  var controller6 = TextEditingController();
//  var controller7 = TextEditingController();
//  var controller8 = TextEditingController();
  String _valBase;
  List _choseBase = [
    "پنجم",
    "ششم",
    "هفتم",
    "هشتم",
    "نهم",
    "دهم",
    "یازدهم",
    "دوازدهم",
  ];
  String _valMajor;
  List _choseMajor = [
    "ریاضی و فیزیک",
    "علوم تجربی",
    "علوم انسانی",
  ];

  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;

    final numOfConsultant = new Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(

          textAlign: TextAlign.right,
          decoration: new InputDecoration(
              labelText: "کد مشاور",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0))),
        ));
    final nationNum = new Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(

          textAlign: TextAlign.right,
          decoration: new InputDecoration(
              labelText: "کد ملی",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0))),
        ));
    final NameStudent = new Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(

          textAlign: TextAlign.right,
          decoration: new InputDecoration(
              labelText: "نام و نام خانوادگی",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0))),
        ));
    final PhoneNum = new Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(

          textAlign: TextAlign.right,
          decoration: new InputDecoration(
              labelText: "شماره موبایل",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0))),
        ));

    final Weekly_Schedule = InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => WeeklySchedule()));
      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              border: Border.all(width: 1.0, color: Colors.deepPurple),
              gradient: LinearGradient(
                colors: [Color(0xFFBC94F6), Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
          child: Center(
            child: Text(
              'برنامه هفتگیتو وارد کن!',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w200,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          )),
    );

    final accept = InkWell(
      onTap: () {

      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              border: Border.all(width: 1.0, color: Colors.deepPurple),
              gradient: LinearGradient(
                colors: [Color(0xFFBC94F6), Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
          child: Center(
            child: Text(
              'داستان موفقیتت رو شروع کن!',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w200,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          )),
    );

    final ChoseMajor = Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButton(
        hint: Text("پایه تحصیلی خود را انتخاب کنید"),
        value: _valBase,
        items: _choseBase.map((value) {
          return DropdownMenuItem(
            child: Text(value),
            value: value,
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _valBase =
                value; //Untuk memberitahu _valFriends bahwa isi nya akan diubah sesuai dengan value yang kita pilih
          });
        },
      ),
    );

    final ChoseBase = Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButton(
        hint: Text("رشته تحصیلی خود را انتخاب کنید"),
        value: _valMajor,
        items: _choseMajor.map((value) {
          return DropdownMenuItem(
            child: Text(value),
            value: value,
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _valMajor =
                value; //Untuk memberitahu _valFriends bahwa isi nya akan diubah sesuai dengan value yang kita pilih
          });
        },
      ),
    );
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
              height: pageHeight,
              width: pageWidth,
              padding: const EdgeInsets.only(right: 15.0, left: 15.0),
              child: Stack(
                children: <Widget>[
                  SafeArea(
                    child: Container(
                      height: pageHeight,
                      width: pageWidth,
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: WaveWidget(
                          config: CustomConfig(
                            gradients: [
                              [Colors.deepPurple, Colors.deepPurple.shade200],
                              [Colors.indigo.shade200, Colors.purple.shade200],
                            ],
                            durations: [19440, 10800],
                            heightPercentages: [0.20, 0.25],
                            blur: MaskFilter.blur(BlurStyle.solid, 10),
                            gradientBegin: Alignment.bottomLeft,
                            gradientEnd: Alignment.topRight,
                          ),
                          waveAmplitude: 0,
                          size: Size(
                            double.infinity,
                            double.infinity,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: pageWidth - 30,
                        height: 45.0,
                        child: NameStudent,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: pageWidth - 30,
                        height: 45.0,
                        child: PhoneNum,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: pageWidth - 30,
                        height: 45.0,
                        child: nationNum,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: pageWidth - 30,
                        height: 45.0,
                        child: numOfConsultant,
                      ),
                      ChoseBase,
                      SizedBox(
                        height: 10.0,
                      ),
                      ChoseMajor,
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: pageWidth - 150,
                        height: 75.0,
                        child: Weekly_Schedule,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: pageWidth - 150,
                        height: 75.0,
                        child: accept,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ],
              )),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green[800];
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
        size.width * 0.5, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
        size.width * 1.0, size.height * 0.9167);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

/*
**********
**********
**********
**********
*** END***
**********
**********
**********
**********
 */

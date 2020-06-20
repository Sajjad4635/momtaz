import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/EnterPage.dart';
import 'package:mmtaz/widgets/WeeklySchedule.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final myStyle =
      TextStyle(fontSize: 16.0, fontFamily: 'vazir', color: Colors.white);

  var nameStudent = MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF64B3EA), Color(0xffA9DAFC)]),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Center(
            child: Row(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'نام: ',
                style: TextStyle(
                    fontSize: 16.0, fontFamily: 'vazir', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            Center(
              child: Text(
                'سجاد حاجی زاده',
                style: TextStyle(
                    fontSize: 16.0, fontFamily: 'vazir', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            )
          ],
        )),
      ),
    ),
  );
  var phonNumStudent = MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF64B3EA), Color(0xffA9DAFC)]),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Center(
            child: Row(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'شماره موبایل: ',
                style: TextStyle(
                    fontSize: 16.0, fontFamily: 'vazir', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            Center(
              child: Text(
                '09339598315',
                style: TextStyle(
                    fontSize: 16.0, fontFamily: 'vazir', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            )
          ],
        )),
      ),
    ),
  );
  var nationNumStudent = MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF64B3EA), Color(0xffA9DAFC)]),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Center(
            child: Row(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'کد ملی: ',
                style: TextStyle(
                    fontSize: 16.0, fontFamily: 'vazir', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            Center(
              child: Text(
                '4900711012',
                style: TextStyle(
                    fontSize: 16.0, fontFamily: 'vazir', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            )
          ],
        )),
      ),
    ),
  );
  var codeMoshaverStudent = MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF64B3EA), Color(0xffA9DAFC)]),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Center(
            child: Row(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'کد مشاور: ',
                style: TextStyle(
                    fontSize: 16.0, fontFamily: 'vazir', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            Center(
              child: Text(
                'GT_65251',
                style: TextStyle(
                    fontSize: 16.0, fontFamily: 'vazir', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            )
          ],
        )),
      ),
    ),
  );
  var studentBase = MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF64B3EA), Color(0xffA9DAFC)]),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Center(
            child: Row(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'پایه تحصیلی: ',
                style: TextStyle(
                    fontSize: 16.0, fontFamily: 'vazir', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            Center(
              child: Text(
                'دوازدهم',
                style: TextStyle(
                    fontSize: 16.0, fontFamily: 'vazir', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            )
          ],
        )),
      ),
    ),
  );
  var reshteTahsili = MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF64B3EA), Color(0xffA9DAFC)]),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Center(
            child: Row(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'رشته تحصیلی: ',
                style: TextStyle(
                    fontSize: 16.0, fontFamily: 'vazir', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            ),
            Center(
              child: Text(
                'ریاضی و فیزیک',
                style: TextStyle(
                    fontSize: 16.0, fontFamily: 'vazir', color: Colors.white),
                textDirection: TextDirection.rtl,
              ),
            )
          ],
        )),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/5.png"),
                      fit: BoxFit.cover,
                    ),
                    gradient: LinearGradient(
                      colors: [Color(0xFF64B3EA), Color(0xffCBE4F6)],
                    )),
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/5.png"),
                        fit: BoxFit.cover,
                      ),
                      gradient: LinearGradient(
                        colors: [Color(0xFF0D3D5E), Color(0xffA9DAFC)],
                      )),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/5.jpg'),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: ListView(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: pageWidth - 30.0,
                        height: pageHeight / 10,
                        child: nameStudent,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: pageWidth - 30.0,
                        height: pageHeight / 10,
                        child: phonNumStudent,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: pageWidth - 30.0,
                        height: pageHeight / 10,
                        child: nationNumStudent,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: pageWidth - 30.0,
                        height: pageHeight / 10,
                        child: codeMoshaverStudent,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: pageWidth - 30.0,
                        height: pageHeight / 10,
                        child: studentBase,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: pageWidth - 30.0,
                        height: pageHeight / 10,
                        child: reshteTahsili,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: pageWidth - 30.0,
                        height: pageHeight / 10,
                        child: MaterialApp(
                          debugShowCheckedModeBanner: false,
                          home: Scaffold(
                            body: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                WeeklySchedule()));
                                  },
                                  child: Container(
//            width: (pageWidth - 30.0) / 2,
//            height: pageHeight / 10,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Color(0xFF64B3EA),
                                          Color(0xffA9DAFC)
                                        ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    child: Center(
                                      child: Text('برنامه هفتگی'),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Enter_page()));
                                  },
                                  child: Container(
//            width: (pageWidth - 30.0) / 2,
//            height: pageHeight / 10,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Color(0xFF64B3EA),
                                          Color(0xffA9DAFC)
                                        ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    child: Center(
                                      child: Text('ویرایش'),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

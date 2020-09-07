import 'package:flutter/material.dart';
import 'package:mmtaz/SelfKnowledgeChilds/examPage.dart';
import 'package:mmtaz/widgets/Setting.dart';

class preExamPage extends StatefulWidget {
  @override
  _preExamPageState createState() => _preExamPageState();
}

class _preExamPageState extends State<preExamPage> {
  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            width: pageWidth,
            height: pageheight,
            margin: EdgeInsets.only(
              left: pageWidth/30.0,
              right: pageWidth/30.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: pageWidth/3,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'آزمون شخصیت شناسی',
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Aviny',
                              color: Colors.black54),
                        ),
                      ),
                    ),
                    Container(
                      width: pageWidth/3,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          '20 سوال',
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Aviny',
                              color: Colors.black54),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: pageWidth/2,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'برای شروع آزمون آماده ای؟؟؟',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Aviny',
                          color: Colors.black54),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => examPage()));
                  },
                  child: Container(
                    width: pageWidth/3,
                    height: pageWidth/8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(45.0)),
                        border: Border.all(color: color),
                        color: Color(0xffeaeaea)
                    ),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'شروع',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Aviny',
                            color: Colors.black54),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

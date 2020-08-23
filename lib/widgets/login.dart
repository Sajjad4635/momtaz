import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mmtaz/Screens/FirstScreen.dart';
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/widgets/Setting.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
          gradient: gradient,
          border: Border.all(),
          borderRadius: BorderRadius.all(
              Radius.circular(30.0) //         <--- border radius here
              ),
          boxShadow: [
            BoxShadow(
              color: Colors.blue[500],
              offset: Offset(0.0, 1.5),
              blurRadius: 1.5,
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}

final myController = TextEditingController();
var aa = myController;
var stu_id;
var base_stu;
var base_stu_n;
var major_stu;
var major_stu_n;

class phoneNumber extends StatefulWidget {
  @override
  _phoneNumberState createState() => _phoneNumberState();
}

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}

class _phoneNumberState extends State<phoneNumber> {
  @override
  Widget build(BuildContext context) {
    var pageWith = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Container(
              width: pageWith,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: pageHeight / 4,
                    width: pageWith / 2,
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: new AssetImage('images/phoneNumber.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                      width: pageWith / 1.5,
                      height: pageHeight / 12,
                      decoration: BoxDecoration(
                          border: Border.all(color: color),
                          borderRadius: BorderRadius.all(Radius.circular(45.0)),
                          color: Color(0xffeaeaea)),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 11,
                        controller: myController,
                        textAlign: TextAlign.center,
                        decoration: new InputDecoration(
                            counter: Offstage(),
                            contentPadding: EdgeInsets.all(5.0),
                            hintText: "شماره همراه",
                            hintStyle:
                                TextStyle(fontSize: 18.0, fontFamily: 'Aviny'),
                            suffixIcon: Icon(Icons.phone_android),
                            prefixIcon: Icon(Icons.arrow_back,
                                color: Color(0xffeaeaea)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(32.0))),
                      )),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => verificationCode()));
//                      _PhoneNumIsIncorrectFormat();
                    },
                    child: Container(
                      width: pageWith / 1.5,
                      height: pageHeight / 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(45.0)),
                          color: color),
                      child: Center(
                        child: Text(
                          'ادامه',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Aviny',
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }

  _PhoneNumIsIncorrectFormat() {
    if ((myController.text.length == 11) &&
        ('${myController.text[0]}' == '0') &&
        ('${myController.text[1]}' == '9')) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              //this right here
              child: Container(
                padding: EdgeInsets.only(
                  top: Consts.avatarRadius + Consts.padding,
                  bottom: Consts.padding,
                  left: Consts.padding,
                  right: Consts.padding,
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(Consts.padding),
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
                    Text(
                      "${myController.text}",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'vazir',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'با تایید شماره همراه پیامی حاوی کد فعال سازی برای شما ارسال میگردد',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Aviny',
                          fontSize: 20.0,
                          color: Colors.black54),
                    ),
                    SizedBox(height: 24.0),
                    Row(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                            ),
                            onPressed: () {
                              sendDataToServer();
                            },
                            child: Container(
                              width: 75.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(18.0)),
                              child: Center(
                                child: Text(
                                  'تایید',
                                  style: TextStyle(
                                      fontFamily: 'Aviny',
                                      fontSize: 20.0,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          });
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              //this right here
              child: Container(
                padding: EdgeInsets.only(
                  top: 15.0,
                  bottom: Consts.padding,
                  left: Consts.padding,
                  right: Consts.padding,
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(Consts.padding),
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
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/Warning-rafiki.png'))),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'فرمت شماره موبایل نادرست است!',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Aviny',
                          fontSize: 20.0,
                          color: Colors.black54),
                    ),
                    SizedBox(height: 24.0),
                    Row(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(45.0),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 75.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(18.0)),
                              child: Center(
                                child: Text(
                                  'تایید',
                                  style: TextStyle(
                                      fontFamily: 'Aviny',
                                      fontSize: 20.0,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          });
    }
  }

  sendDataToServer() async {
    final response = await http
        .post(api.siteName + '/api/mobile', body: {"mobile": '${aa.text}'});
    print(response.statusCode);
    var status = json.decode(response.body)['status'];
    stu_id = json.decode(response.body)['stu_id'];
    if (status == 0) {
      Navigator.pushReplacementNamed(context, '/verificationCode');
    } else if (status == 1) {
      Navigator.pushReplacementNamed(context, '/register');
    } else if (status == 2) {
      Navigator.pushReplacementNamed(context, '/FirstScreen');
    }
  }
}

class verificationCode extends StatefulWidget {
  @override
  _verificationCodeState createState() => _verificationCodeState();
}

class _verificationCodeState extends State<verificationCode> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Material(
            child: new Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: pageWidth / 2,
                height: pageHeight / 4,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new AssetImage('images/Confirmed.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                  width: pageWidth / 1.5,
                  height: pageHeight / 12,
                  decoration: BoxDecoration(
                      border: Border.all(color: color),
                      borderRadius: BorderRadius.all(Radius.circular(45.0)),
                      color: Color(0xffeaeaea)),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    controller: myController,
                    textAlign: TextAlign.center,
                    decoration: new InputDecoration(
                        counter: Offstage(),
                        contentPadding: EdgeInsets.all(5.0),
                        hintText: "کد تایید",
                        hintStyle:
                            TextStyle(fontSize: 18.0, fontFamily: 'Aviny'),
                        suffixIcon: Icon(Icons.sms),
                        prefixIcon:
                            Icon(Icons.arrow_back, color: Color(0xffeaeaea)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(32.0))),
                  )),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => register()));
//                      _RegisterCodeIsIncorrectFormat();
                },
                child: Container(
                  width: pageWidth / 1.5,
                  height: pageHeight / 12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(45.0)),
                      color: color),
                  child: Center(
                    child: Text(
                      'ادامه',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Aviny',
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )));
  }

  sendDataToServer() async {
    final response = await http.post(api.siteName + '/api/ok_code',
        body: {"random": '${myController.text}', 'stu_id': '${stu_id}'});
    print(response.statusCode);
    var type = json.decode(response.body)['type'];
    if (type == 0) {
      print('err');
    } else if (type == 1) {
      Navigator.pushReplacementNamed(context, '/register');
    } else if (type == -2) {
      print('error!!!');
    }
  }

  _RegisterCodeIsIncorrectFormat() {
    if (myController.text.length < 6) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              //this right here
              child: Container(
                padding: EdgeInsets.only(
                  top: 15.0,
                  bottom: Consts.padding,
                  left: Consts.padding,
                  right: Consts.padding,
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(Consts.padding),
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
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/Warning-rafiki.png'))),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'کد تایید باید شش رقم باشد!',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Aviny',
                          fontSize: 20.0,
                          color: Colors.black54),
                    ),
                    SizedBox(height: 24.0),
                    Row(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 75.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(18.0)),
                              child: Center(
                                child: Text(
                                  'تایید',
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Aviny',
                                      fontSize: 20.0,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          });
    } else {
      sendDataToServer();
    }
  }
}

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  String ip_token;
  var text = '';

  final myControllerName = TextEditingController();
  final myControllerPass1 = TextEditingController();
  final myControllerPass2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding:
                  EdgeInsets.only(right: pageWidth / 30, left: pageWidth / 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: pageWidth / 2,
                    height: pageHeight / 4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/Confirmed.png'),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                      width: pageWidth,
                      height: pageHeight / 11,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(45.0)),
                          border: Border.all(color: color),
                          color: Color(0xffeaeaea),
                        ),
                        child: Center(
                          child: TextField(
                            controller: myControllerName,
                            textAlign: TextAlign.center,
                            decoration: new InputDecoration(
                                counter: Offstage(),
                                contentPadding: EdgeInsets.all(5.0),
                                hintText: "نام و نام خانوادگی",
                                hintStyle: TextStyle(
                                    fontSize: 18.0, fontFamily: 'Aviny'),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(32.0))),
                          ),
                        ),
                      )),
                  Container(
                    child: Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                            width: pageWidth / 3,
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: color),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(45.0)),
                                color: Color(0xffeaeaea)),
                            child: Center(
                              child: base(),
                            )),
                        Container(
                            width: pageWidth / 3,
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: color),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(45.0)),
                                color: Color(0xffeaeaea)),
                            child: Center(
                              child: major(),
                            )),
                      ],
                    ),
                  ),
                  Container(
                      width: pageWidth,
                      height: pageHeight / 11,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(45.0)),
                          border: Border.all(color: color),
                          color: Color(0xffeaeaea),
                        ),
                        child: Center(
                          child: TextField(
                            controller: myControllerPass1,
                            textAlign: TextAlign.center,
                            decoration: new InputDecoration(
                              counter: Offstage(),
                              contentPadding: EdgeInsets.all(5.0),
                              hintText: "کلمه عبور",
                              hintStyle: TextStyle(
                                  fontSize: 18.0, fontFamily: 'Aviny'),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(32.0)),
                              suffixIcon: Icon(
                                Icons.remove_red_eye,
                                color: Color(0xffeaeaea),
                              ),
                              prefixIcon: Icon(Icons.remove_red_eye),
                            ),
                          ),
                        ),
                      )),
                  Container(
                      width: pageWidth,
                      height: pageHeight / 11,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(45.0)),
                          border: Border.all(color: color),
                          color: Color(0xffeaeaea),
                        ),
                        child: Center(
                          child: TextField(
                            controller: myControllerPass2,
                            textAlign: TextAlign.center,
                            decoration: new InputDecoration(
                              counter: Offstage(),
                              contentPadding: EdgeInsets.all(5.0),
                              hintText: "تکرار کلمه عبور",
                              hintStyle: TextStyle(
                                  fontSize: 18.0, fontFamily: 'Aviny'),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(32.0)),
                              suffixIcon: Icon(
                                Icons.remove_red_eye,
                                color: Color(0xffeaeaea),
                              ),
                              prefixIcon: Icon(Icons.remove_red_eye),
                            ),
                          ),
                        ),
                      )),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FirstScreen()));
//                      sendDataToServer();
                    },
                    child: Container(
                      width: pageWidth / 3,
                      height: pageHeight / 11,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(45.0)),
                          color: color),
                      child: Center(
                        child: Text(
                          'تایید',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Aviny',
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )));
  }

  sendDataToServer() async {
    final response = await http.post(api.siteName + '/api/register', body: {
      "stu_id": '${stu_id}',
      "name": '${myControllerName.text}',
      "base": '${base_stu_n.toString()}',
      "major": '${major_stu_n.toString()}',
      "pass": '${myControllerPass1.text}',
    });

    print(response.statusCode);
    var status = json.decode(response.body)['status'];
    if (status == 1) {
      await saveIpToken(json.decode(response.body)['token']);
      Navigator.pushReplacementNamed(context, '/FirstScreen');
    }
  }

  saveIpToken(String token) async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    await shared.setString('myIp_token', token);
  }
}

class base extends StatefulWidget {
  base({Key key}) : super(key: key);

  @override
  _baseState createState() => _baseState();
}

class _baseState extends State<base> {
  String dropdownValueBase = null;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButton<String>(
        hint: Text(
          'پایه تحصیلی',
          textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 18.0, fontFamily: 'Aviny'),
        ),
        value: dropdownValueBase,
        underline: Container(),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(fontSize: 18.0, fontFamily: 'Aviny', color: Colors.black54),
        onChanged: (String newValue) {
          setState(() {
            dropdownValueBase = newValue;
            base_stu = dropdownValueBase.toString();
            if (base_stu == 'نهم') {
              base_stu_n = 0;
            } else if (base_stu == 'دهم') {
              base_stu_n = 1;
            } else if (base_stu == 'یازدهم') {
              base_stu_n = 2;
            } else if (base_stu == 'دوازدهم') {
              base_stu_n = 3;
            }
          });
        },
        items: <String>[
          "نهم",
          "دهم",
          "یازدهم",
          "دوازدهم",
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

class major extends StatefulWidget {
  major({Key key}) : super(key: key);

  @override
  _majorState createState() => _majorState();
}

class _majorState extends State<major> {
  String dropdownValueMajor = null;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButton<String>(
        hint: Text(
          'رشته',
          textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 18.0, fontFamily: 'Aviny'),
        ),
        value: dropdownValueMajor,
        underline: Container(),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(fontSize: 18.0, fontFamily: 'Aviny', color: Colors.black54),
        onChanged: (String newValue) {
          setState(() {
            dropdownValueMajor = newValue;
            major_stu = dropdownValueMajor.toString();
            if (major_stu == 'ریاضیات و فیزیک') {
              major_stu_n = 0;
            } else if (major_stu == 'علوم تجربی') {
              major_stu_n = 1;
            } else if (major_stu == 'علوم انسانی') {
              major_stu_n = 2;
            } else if (major_stu == 'بدون رشته') {
              major_stu_n = 3;
            }
          });
        },
        items: <String>[
          "بدون رشته",
          "ریاضیات و فیزیک",
          "علوم تجربی",
          "علوم انسانی",
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

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mmtaz/models/api.dart';
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
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
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

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
            body: new Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFA8EC46), Color(0xFF5DC2F6)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: new AssetImage('images/owl.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 15.0, left: 15.0),
                    child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          maxLength: 11,
                          controller: myController,
                          textAlign: TextAlign.right,
                          decoration: new InputDecoration(
                              labelText: "شماره همراه",
                              hintStyle: TextStyle(fontSize: 18.0),
                              suffixIcon: Icon(Icons.phone_android),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32.0))),
                        )),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    height: 45.0,
                    width: 75.0,
                    child: RaisedButton(
                      onPressed: () {
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
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFA8EC46),
                                          Color(0xFF5DC2F6)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      shape: BoxShape.rectangle,
                                      borderRadius:
                                      BorderRadius.circular(Consts.padding),
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
                                            fontFamily: 'vazir',
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        SizedBox(height: 24.0),
                                        Row(
                                          children: <Widget>[
                                            Align(
                                              alignment: Alignment.center,
                                              child: FlatButton(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  new BorderRadius.circular(
                                                      18.0),
                                                ),
                                                onPressed: () {
                                                  sendDataToServer();
                                                },
                                                child: Container(
                                                  width: 75.0,
                                                  height: 45.0,
                                                  decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xff365de7),
                                                          Color(0xffB97CF5)
                                                        ],
                                                        begin: Alignment.centerLeft,
                                                        end: Alignment.centerRight,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          18.0)),
                                                  child: Center(
                                                    child: Text(
                                                      'تایید',
                                                      style: TextStyle(
                                                          fontFamily: 'vazir',
                                                          fontSize: 18.0,
                                                          color: Colors.black),
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
                        } else{
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
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFA8EC46),
                                          Color(0xFF5DC2F6)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      shape: BoxShape.rectangle,
                                      borderRadius:
                                      BorderRadius.circular(Consts.padding),
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
                                          width:150.0,
                                          height: 150.0,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('images/false-sign-png-4.png')
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 10.0,),
                                        Text(
                                          'فرمت شماره موبایل نادرست است',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'vazir',
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        SizedBox(height: 24.0),
                                        Row(
                                          children: <Widget>[
                                            Align(
                                              alignment: Alignment.center,
                                              child: FlatButton(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  new BorderRadius.circular(
                                                      18.0),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  width: 75.0,
                                                  height: 45.0,
                                                  decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xff365de7),
                                                          Color(0xffB97CF5)
                                                        ],
                                                        begin: Alignment.centerLeft,
                                                        end: Alignment.centerRight,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          18.0)),
                                                  child: Center(
                                                    child: Text(
                                                      'تایید',
                                                      style: TextStyle(
                                                          fontFamily: 'vazir',
                                                          fontSize: 18.0,
                                                          color: Colors.black),
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
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xff365de7), Color(0xffB97CF5)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                          BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "ادامه",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'vazir',
                                fontSize: 18.0,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
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
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }

    sendDataToServer() async {
      final response = await http.post(api.siteName + '/api/ok_code',
          body: {"random": '${myController.text}', 'stu_id': '${stu_id}'});
      print(response.statusCode);
      var type = json.decode(response.body)['type'];
      if (type == 0) {
        print('error');
      } else if (type == 1) {
        Navigator.pushReplacementNamed(context, '/register');
      } else if (type == -2) {
        print('error!!!');
      }
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Material(
            child: new Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFA8EC46), Color(0xFF5DC2F6)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
              padding: const EdgeInsets.only(
                  top: 150.0, left: 45.0, right: 45.0, bottom: 20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: new AssetImage('images/verification_code.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 6,
                        controller: myController,
                        textAlign: TextAlign.right,
                        decoration: new InputDecoration(
                            labelText: "کد تایید",
                            hintStyle: TextStyle(fontSize: 18.0),
                            suffixIcon: Icon(Icons.sms),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0))),
                      )),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    height: 45.0,
                    width: 75.0,
                    child: RaisedButton(
                      onPressed: () {
                        if(myController.text.length < 6){
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
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFA8EC46),
                                          Color(0xFF5DC2F6)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      shape: BoxShape.rectangle,
                                      borderRadius:
                                      BorderRadius.circular(Consts.padding),
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
                                          width:150.0,
                                          height: 150.0,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('images/false-sign-png-4.png')
                                              )
                                          ),
                                        ),
                                        SizedBox(height: 10.0,),
                                        Text(
                                          'کد تایید باید شش رقم باشد',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'vazir',
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        SizedBox(height: 24.0),
                                        Row(
                                          children: <Widget>[
                                            Align(
                                              alignment: Alignment.center,
                                              child: FlatButton(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  new BorderRadius.circular(
                                                      18.0),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  width: 75.0,
                                                  height: 45.0,
                                                  decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xff365de7),
                                                          Color(0xffB97CF5)
                                                        ],
                                                        begin: Alignment.centerLeft,
                                                        end: Alignment.centerRight,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          18.0)),
                                                  child: Center(
                                                    child: Text(
                                                      'تایید',
                                                      style: TextStyle(
                                                          fontFamily: 'vazir',
                                                          fontSize: 18.0,
                                                          color: Colors.black),
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
                        }else{
                          sendDataToServer();
                        }

                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xff365de7), Color(0xffB97CF5)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                          BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "ادامه",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'vazir',
                                fontSize: 18.0,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  final myControllerName = TextEditingController();
  final myControllerPass1 = TextEditingController();
  final myControllerPass2 = TextEditingController();
  String ip_token;
  var text = '';

  @override
  Widget build(BuildContext context) {
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

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Material(
            child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xFFA8EC46), Color(0xFF5DC2F6)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: new AssetImage('images/register.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                  child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                        controller: myControllerName,
                        textAlign: TextAlign.right,
                        decoration: new InputDecoration(
                            labelText: "نام و نام خانوادگی",
                            hintStyle: TextStyle(fontSize: 18.0),
                            suffixIcon: Icon(Icons.assignment_ind),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0))),
                      )),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: base()),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: major()),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                  child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                        obscureText: true,
                        controller: myControllerPass1,
                        textAlign: TextAlign.right,
                        decoration: new InputDecoration(
                            labelText: "کلمه عبور",
                            hintStyle: TextStyle(fontSize: 18.0),
                            suffixIcon: Icon(Icons.remove_red_eye),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0))),
                      )),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                  child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                        obscureText: true,
                        controller: myControllerPass2,
                        textAlign: TextAlign.right,
                        decoration: new InputDecoration(
                            labelText: "تکرار کلمه عبور",
                            hintStyle: TextStyle(fontSize: 18.0),
                            suffixIcon: Icon(Icons.remove_red_eye),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0))),
                      )),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  height: 45.0,
                  width: 75.0,
                  child: RaisedButton(
                    onPressed: () {
                      if (base_stu_n == 3){
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
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFFA8EC46),
                                        Color(0xFF5DC2F6)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    shape: BoxShape.rectangle,
                                    borderRadius:
                                    BorderRadius.circular(Consts.padding),
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
                                        width:150.0,
                                        height: 150.0,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('images/false-sign-png-4.png')
                                            )
                                        ),
                                      ),
                                      SizedBox(height: 10.0,),
                                      Text(
                                        'دانش آموز پایه نهم هستید؟',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'vazir',
                                          fontSize: 18.0,
                                        ),
                                      ),
                                      Text(
                                        'آیا در فیلد انتخاب رشته گزینه "بدون رشته" را انتخاب کرده اید؟',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'vazir',
                                          fontSize: 18.0,
                                        ),
                                      ),
                                      SizedBox(height: 24.0),
                                      Row(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.center,
                                            child: FlatButton(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                new BorderRadius.circular(
                                                    18.0),
                                              ),
                                              onPressed: () {
                                                sendDataToServer();
                                              },
                                              child: Container(
                                                width: 75.0,
                                                height: 45.0,
                                                decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Color(0xff365de7),
                                                        Color(0xffB97CF5)
                                                      ],
                                                      begin: Alignment.centerLeft,
                                                      end: Alignment.centerRight,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        18.0)),
                                                child: Center(
                                                  child: Text(
                                                    'بله',
                                                    style: TextStyle(
                                                        fontFamily: 'vazir',
                                                        fontSize: 18.0,
                                                        color: Colors.black),
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
                      }else{
                        sendDataToServer();
                      }

                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff365de7), Color(0xffB97CF5)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: Text(
                          "ادامه",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'vazir',
                              fontSize: 18.0,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ),
        )));
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
        hint: Text('پایه تحصیلی'),
        value: dropdownValueBase,
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
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
        hint: Text('رشته'),
        value: dropdownValueMajor,
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
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
            }else if (major_stu == 'بدون رشته') {
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

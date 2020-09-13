import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/widgets/Setting.dart';
import 'package:mmtaz/widgets/login.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class passwordPage extends StatefulWidget {
  var phoneNum;

  passwordPage(this.phoneNum);

  @override
  _passwordPageState createState() => _passwordPageState({phoneNum});
}

class _passwordPageState extends State<passwordPage> {
  var phoneNum;

  _passwordPageState(this.phoneNum);

  @override
  Widget build(BuildContext context) {
    var pageWith = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
//              resizeToAvoidBottomPadding: false,
              body: SingleChildScrollView(
                  child: Container(
                    width: pageWith,
                    height: pageHeight-25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: pageHeight / 2,
                          decoration: new BoxDecoration(
                            image: DecorationImage(
                              image: new AssetImage('images/Mobilelogin-bro.png'),
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
                              obscureText: true,
                              controller: myController,
                              textAlign: TextAlign.center,
                              decoration: new InputDecoration(
                                  counter: Offstage(),
                                  contentPadding: EdgeInsets.all(5.0),
                                  hintText: "رمز عبور",
                                  hintStyle:
                                  TextStyle(fontSize: 18.0, fontFamily: 'Aviny'),
                                  suffixIcon: Icon(Icons.keyboard_hide),
                                  prefixIcon: Icon(Icons.arrow_back,
                                      color: Color(0xffeaeaea)),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(32.0))),
                            )),
                        InkWell(
                          onTap: () {
                            _PhoneNumIsIncorrectFormat();
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
                  )
              ))),
    );

  }
  passwordIsIncorrect(){
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
                    'کلمه عبور صحیح نیست!',
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
  _PhoneNumIsIncorrectFormat() {
    sendDataToServer();
  }

  sendDataToServer() async {
    final response = await http
        .post(api.siteName + '/api/check_pass', body: {
          "mobile": '${widget.phoneNum.toString()}',
          "pass": '${myController.text}'});
    print(response.statusCode);
    print('asasdfa');
    print(response.body);
    var status = json.decode(response.body)['type'];
    var stu_id = json.decode(response.body)['stu_id'];
    if (status == 1) {
      await saveIpToken('${widget.phoneNum.toString()}'+';'+'${stu_id.toString()}');
    } else if (status == 2) {
      passwordIsIncorrect();
    }
  }
  saveIpToken(String token) async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    await shared.setString('myIp_token', token);
    Navigator.pushReplacementNamed(context, '/FirstScreen');
  }
}
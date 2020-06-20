import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/raidioButton.dart';

class wallet extends StatefulWidget {
  @override
  _walletState createState() => _walletState();
}

class _walletState extends State<wallet> {
  @override
  Widget build(BuildContext context) {
    var myStyle = TextStyle(
        fontFamily: 'vazir', fontSize: 15.0, fontWeight: FontWeight.w500);
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 5.0, color: Colors.deepPurple),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      gradient: LinearGradient(
                          colors: [Color(0xFFBC94F6), Colors.white])),
                  child: Center(
                      child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Text(
                          'موجودی شما',
                          style: myStyle,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                            width: 50.0,
                            height: 40.0,
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.5, color: Colors.deepPurple),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Center(
                              child: Text('5000'),
                            )),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'تومان',
                          style: myStyle,
                        )
                      ],
                    ),
                  )),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                flex: 6,
                child: CustomRadio(),
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      border: Border.all(width: 1.0, color: Colors.deepPurple),
                      gradient: LinearGradient(
                        colors: [
                          Colors.deepPurple,
                          Color(0xFFBC94F6),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      )),
                  child: Center(
                    child: Text(
                      'پرداخت',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontFamily: 'vazir', fontSize: 18.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

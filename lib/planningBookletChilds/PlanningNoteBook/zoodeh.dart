import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/Setting.dart';

class zoodeh extends StatefulWidget {
  @override
  _zoodehState createState() => _zoodehState();
}

class _zoodehState extends State<zoodeh> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/Warning-rafiki.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'امروز هنوز نیومده!',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Aviny',
                    fontSize: 25.0,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 12,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: color,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Color(0xffEAEAEA),
                    ),
                    child: Center(
                      child: Text(
                        'بازگشت',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: 'Aviny',
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
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

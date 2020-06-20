import 'package:flutter/material.dart';

class Consultants_Weekly_Schedule extends StatefulWidget {
  @override
  _Consultants_Weekly_ScheduleState createState() => _Consultants_Weekly_ScheduleState();
}

class _Consultants_Weekly_ScheduleState extends State<Consultants_Weekly_Schedule> {
  @override
  Widget build(BuildContext context) {
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: pageHeight,
          width: pageWidth,
          child: ListView(
            children: <Widget>[
              InkWell(
                onTap: (){

                },
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        border: Border.all(
                            width: 0.5,
                            color: Colors.black
                        )
                    ),
                    width: pageWidth,
                    height: pageHeight/2,
                    child: Stack(
                      children: <Widget>[
//                      Image.asset('images/6.jpg', fit: BoxFit.cover,),
                        Container(
                          margin: const EdgeInsets.only(top: 100.0, right: 80.0,left: 80.0,bottom: 100.0),
                          color: Colors.black.withOpacity(0.3),
                          child: Center(
                            child: Text('برنامه آماده',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.0,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                ),
              ),
              SizedBox(height: 10.0,),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Consultants_Weekly_Schedule()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        border: Border.all(
                            width: 0.5,
                            color: Colors.black
                        )
                    ),
                    width: pageWidth,
                    height: pageHeight/2,
                    child: Stack(
                      children: <Widget>[
//                      Image.asset('images/6.jpg', fit: BoxFit.cover,),
                        Container(
                          margin: const EdgeInsets.only(top: 100.0, right: 80.0,left: 80.0,bottom: 100.0),
                          color: Colors.black.withOpacity(0.3),
                          child: Center(
                            child: Text('برنامه مشاور',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.0,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

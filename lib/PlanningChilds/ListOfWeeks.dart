import 'package:flutter/material.dart';
import 'package:mmtaz/PlanningChilds/finalPage.dart';
import 'package:mmtaz/planningBookletChilds/LastWeeks/LastWeeks.dart';
import 'package:mmtaz/widgets/Setting.dart';
import 'package:mmtaz/widgets/Wallet.dart';

var azName = 'گزینه دو';
var azPrice = 2000;

class ListOfWeeks extends StatefulWidget {
  var index;

  ListOfWeeks(this.index);

  @override
  _ListOfWeeksState createState() => _ListOfWeeksState(index);
}

class _ListOfWeeksState extends State<ListOfWeeks> {
  var index;

  _ListOfWeeksState(this.index);

  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(
                    top: pageWidth/90.0,
                    bottom: pageWidth/90.0,
                    left: pageWidth/30.0,
                    right: pageWidth/30.0,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: color
                  ),
                  child: Center(
                    child: Text(
                      'هفته مورد نظرت رو انتخاب کن',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontFamily: 'Aviny'),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: Container(
                  margin: EdgeInsets.only(
                    top: pageWidth/90.0,
                    bottom: pageWidth/90.0,
                    left: pageWidth/30.0,
                    right: pageWidth/30.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Color(0xffEAEAEA)
                  ),
                  child: GridView.builder(
                    itemCount: LastWeeks.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: (){
                          openDialog1();
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                            top: pageWidth/30.0,
                            bottom: pageWidth/30.0,
                            left: pageWidth/30.0,
                            right: pageWidth/30.0,
                          ),
                          padding: EdgeInsets.only(
                            top: pageWidth/30.0,
                            bottom: pageWidth/30.0,
                            left: pageWidth/30.0,
                            right: pageWidth/30.0,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.white,
                              border: Border.all(color: color)
                          ),
                          child: Column(
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      'هفته شماره '+ '${index+1}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 25.0,
                                          color: Colors.black,
                                          fontFamily: 'Aviny'),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      '1399/7/15',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.black54,
                                          fontFamily: 'Aviny'),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  openDialog1() {
    showDialog(
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
                borderRadius: BorderRadius.circular(15.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // To make the card compact
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/Designer-rafiki.png'))),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'هزینه دریافت برنامه برای آزمون '+azName+ '${azPrice}'+' تومان' ,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Aviny',
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'برای ارسال درخواست تایید کن!',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Aviny',
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if(Balance >= azPrice){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => finalPage(2)));
                      }else if(Balance < azPrice){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => finalPage(0)));
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 7,
                      height: MediaQuery.of(context).size.height / 15,
                      decoration: BoxDecoration(
                          border: Border.all(color: color),
                          color: Color(0xffeaeaea),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'تایید',
                          textDirection: TextDirection.rtl,
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
          );
        });
  }
}

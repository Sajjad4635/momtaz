import 'package:flutter/material.dart';
import 'package:mmtaz/PlanningChilds/ListOfWeeks.dart';
import 'package:mmtaz/PlanningChilds/finalPage.dart';
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/widgets/Setting.dart';
import 'package:http/http.dart' as http;

class azmoonAmade extends StatefulWidget {
  var key1;
  var key2;

  azmoonAmade(this.key1, this.key2);

  @override
  _azmoonAmadeState createState() => _azmoonAmadeState(key1, key2);
}

class _azmoonAmadeState extends State<azmoonAmade> {
  var key1;
  var key2;

  _azmoonAmadeState(this.key1, this.key2);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              MediaQuery.of(context).size.height / 8,
            ),
            child: AppBar(
              elevation: 0.0,
              backgroundColor: color,
              actions: <Widget>[
                Container(
                  decoration: BoxDecoration(color: color),
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 40),
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.height / 32,
                      left: MediaQuery.of(context).size.height / 32),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          child: Center(
                            child: Text(
                              'ممتاز',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'Aviny',
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Icon(Icons.shopping_basket, color: Colors.white),
                    ],
                  ),
                )
              ],
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                color: color,
//          color: Color(0xffEAEAEA),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: Color(0xffEAEAEA)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45.0))),
                      child: Center(
                        child: Text(
                          'برای کدوم آزمون برنامه میخوای؟',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontFamily: 'Aviny'),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffEAEAEA),
                      borderRadius:
                      BorderRadius.only(topRight: Radius.circular(45.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Ghalamchi();
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height / 5,
                            decoration: BoxDecoration(
                              border: Border.all(color: color),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/ghalamchi.png')
                                  )),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Gaj();
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height / 5,
                            decoration: BoxDecoration(
                              border: Border.all(color: color),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/gaj.png'))),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Gozine2();
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height / 5,
                            decoration: BoxDecoration(
                              border: Border.all(color: color),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/gozinedo.png'))),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Ghalamchi() {
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
                        'هزینه دریافت برنامه برای آزمون قلم چی 20000 تومان',
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
                      sendDataToServerGhalamchi();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => finalPage(0)));
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

  Gaj() {
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
                        'هزینه دریافت برنامه برای آزمون گاج 20000 تومان',
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
                      sendDataToServerGaj();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => finalPage(0)));
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

  Gozine2() {
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
                        'هزینه دریافت برنامه برای آزمون گزینه دو 20000 تومان',
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
                      sendDataToServerGozine2();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => finalPage(2)));
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

  sendDataToServerGhalamchi() async{
    var response = await http.post(api.siteName + '/api/', body: {
      'key': '${widget.key1}'+'${widget.key2}'+'0'
    });
  }
  sendDataToServerGaj() async{
    var response = await http.post(api.siteName + '/api/', body: {
      'key': '${widget.key1}'+'${widget.key2}'+'1'
    });
  }
  sendDataToServerGozine2() async{
    var response = await http.post(api.siteName + '/api/', body: {
      'key': '${widget.key1}'+'${widget.key2}'+'2'
    });
  }
}

class azmoonMoshaver extends StatefulWidget {
  var key1;
  var key2;

  azmoonMoshaver(this.key1, this.key2);

  @override
  _azmoonMoshaverState createState() => _azmoonMoshaverState(key1, key2);
}

class _azmoonMoshaverState extends State<azmoonMoshaver> {
  var key1;
  var key2;

  _azmoonMoshaverState(this.key1, this.key2);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              MediaQuery.of(context).size.height / 8,
            ),
            child: AppBar(
              elevation: 0.0,
              backgroundColor: color,
              actions: <Widget>[
                Container(
                  decoration: BoxDecoration(color: color),
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 40),
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.height / 32,
                      left: MediaQuery.of(context).size.height / 32),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          child: Center(
                            child: Text(
                              'ممتاز',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'Aviny',
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Icon(Icons.shopping_basket, color: Colors.white),
                    ],
                  ),
                )
              ],
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                color: color,
//          color: Color(0xffEAEAEA),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: Color(0xffEAEAEA)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45.0))),
                      child: Center(
                        child: Text(
                          'برای کدوم آزمون برنامه میخوای؟',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontFamily: 'Aviny'),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffEAEAEA),
                      borderRadius:
                      BorderRadius.only(topRight: Radius.circular(45.0)),
                    ),
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index){
                        return InkWell(
                          onTap: () {
                            goToListOfWeeks(index);
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.only(
                              top: 10.0,
                              bottom: 10.0,
                              right: MediaQuery.of(context).size.width/4,
                              left: MediaQuery.of(context).size.width/4
                            ),
                            height: MediaQuery.of(context).size.height / 5,
                            decoration: BoxDecoration(
                              border: Border.all(color: color),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/ghalamchi.png'))),
                            ),
                          ),
                        );
                      },
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Ghalamchi() {
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
                        'هزینه دریافت برنامه برای آزمون قلم چی 40000 تومان',
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => finalPage(2)));
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

  Gaj() {
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
                        'هزینه دریافت برنامه برای آزمون گاج 40000 تومان',
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => finalPage(2)));
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

  Gozine2() {
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
                        'هزینه دریافت برنامه برای آزمون گزینه دو 40000 تومان',
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => finalPage(2)));
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
  sendDataToServerGhalamchi() async{
    var response = await http.post(api.siteName + '/api/', body: {
      'key': '${widget.key1}'+'${widget.key2}'+'0'
    });
  }
  sendDataToServerGaj() async{
    var response = await http.post(api.siteName + '/api/', body: {
      'key': '${widget.key1}'+'${widget.key2}'+'1'
    });
  }
  sendDataToServerGozine2() async{
    var response = await http.post(api.siteName + '/api/', body: {
      'key': '${widget.key1}'+'${widget.key2}'+'2'
    });
  }

  goToListOfWeeks(int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ListOfWeeks(index)));
  }
}

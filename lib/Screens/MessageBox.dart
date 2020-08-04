import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmtaz/MessageChilds/ChatPage.dart';

class MessageBox extends StatefulWidget {
  @override
  _MessageBoxState createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));

    animation = Tween(begin: 0.0, end: 5.0).animate(
        new CurvedAnimation(parent: controller, curve: Curves.easeInOut));

    controller.addListener(() {
      if (controller.isCompleted) {
        controller.reverse();
      } else if (controller.isDismissed) {
        controller.forward();
      }
    });
  }

  @override
  dispose() {
    controller.dispose(); // you need this
    super.dispose();
  }

  Widget _animationBuilder(BuildContext context, Widget child) {
    return Container(
      decoration: BoxDecoration(color: Color(0xff00d170)),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff00d170),
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
                      color: Color(0xff00d170),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(45.0))),
                  child: Center(
                    child: Text(
                      'با مشاورت در ارتباط باش!',
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
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 8,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ChatPage()));
                                },
                                child: Container(
//                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height / 4,
                                    child: Image(
                                      image: new AssetImage('images/Group_Chat.gif'),
                                    )),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: Center(
                                  child: Text(
                                    'ارتباط با مشاور',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Color(0xff00d170),
                                        fontFamily: 'Aviny'),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 8,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ChatPagesec()));
                                },
                                child: Container(
//                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height / 4,
                                    child: Image(
                                      image: new AssetImage('images/Security.gif'),
                                    )),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: Center(
                                  child: Text(
                                    'پیام خصوصی به مشاور',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Color(0xff00d170),
                                        fontFamily: 'Aviny'),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ),
                  ],
                ),
              ),
            ),

//          InkWell(
//            onTap: () {
//              Navigator.push(
//                  context, MaterialPageRoute(builder: (context) => ChatPage()));
//            },
//            child: Container(
//                decoration: BoxDecoration(
//                  color: Color(0xff00d170),
//                    image: DecorationImage(
//                        colorFilter: new ColorFilter.mode(
//                            Color(0xff00d170).withOpacity(0.7),
//                            BlendMode.dstATop),
//                        image: AssetImage('images/back.png'),
//                        fit: BoxFit.cover),
////                    image: DecorationImage(
////                      image: AssetImage("images/1111.png"),
////                      fit: BoxFit.cover,
////                    ),
//                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
////                    border: Border.all(width: 0.5, color: Colors.black)
//                ),
//                margin: const EdgeInsets.only(right: 25.0, left: 25.0),
//                width: pageWidth,
//                height: pageHeight / 4,
//                child: Stack(
//                  children: <Widget>[
//                    Container(
//                      margin: const EdgeInsets.only(
//                          top: 10.0, right: 20.0, left: 20.0, bottom: 10.0),
//
//                    )
//                  ],
//                )),
//          ),
//            InkWell(
//              onTap: () {
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => ChatPagesec()));
//              },
//              child: Container(
//                  decoration: BoxDecoration(
//                    gradient: LinearGradient(
//                      colors: [Color(0xff365de7), Color(0xffB97CF5)],
//                      begin: Alignment.centerLeft,
//                      end: Alignment.centerRight,
//                    ),
////                    image: DecorationImage(
////                      image: AssetImage("images/2222.png"),
////                      fit: BoxFit.cover,
////                    ),
//                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
////                    border: Border.all(width: 0.5, color: Colors.black)
//                  ),
//                  width: pageWidth / 2,
//                  height: pageHeight / 5,
//                  child: Container(
//                    decoration: BoxDecoration(
//                        image: DecorationImage(
//                            image: AssetImage('images/bac4.png'))),
//                    child: Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: <Widget>[
//                        Text(
//                          'پیام خصوصی',
//                          style: TextStyle(fontSize: 22.0),
//                        ),
//                        Text(
//                          'به مشاور',
//                          style: TextStyle(fontSize: 22.0),
//                        ),
//                      ],
//                    ),
//                  )),
//            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    return Container(
      width: pageWidth,
      child: new AnimatedBuilder(
          animation: controller, builder: _animationBuilder),
    );
  }
}

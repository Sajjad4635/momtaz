import 'package:flutter/material.dart';
import 'package:mmtaz/MessageChilds/ChatPage.dart';

class MessageBox extends StatefulWidget {
  @override
  _MessageBoxState createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  @override
  Widget build(BuildContext context) {
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;
    return Container(
      width: pageWidth,
      decoration: new BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFA8EC46), Color(0xFF5DC2F6)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatPage()));
            },
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff365de7), Color(0xffB97CF5)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
//                    image: DecorationImage(
//                      image: AssetImage("images/1111.png"),
//                      fit: BoxFit.cover,
//                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
//                    border: Border.all(width: 0.5, color: Colors.black)
                ),
                width: pageWidth / 2,
                height: pageHeight / 5,
                child: Stack(
                  children: <Widget>[
//                      Image.asset('images/6.jpg', fit: BoxFit.cover,),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 10.0, right: 20.0, left: 20.0, bottom: 10.0),
//                      color: Colors.black.withOpacity(0.4),
                      child: Center(
                        child: Text(
                          'چت با مشاور',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 22.0,
                              color: Colors.black),
                        ),
                      ),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 30.0,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatPagesec()));
            },
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff365de7), Color(0xffB97CF5)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
//                    image: DecorationImage(
//                      image: AssetImage("images/2222.png"),
//                      fit: BoxFit.cover,
//                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
//                    border: Border.all(width: 0.5, color: Colors.black)
                ),
                width: pageWidth / 2,
                height: pageHeight / 5,
                child: Stack(
                  children: <Widget>[
//                      Image.asset('images/6.jpg', fit: BoxFit.cover,),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 10.0, right: 20.0, left: 20.0, bottom: 10.0),
//                      color: Colors.black.withOpacity(0.9),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(
                              'پیام خصوصی به',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0,
                                  color: Colors.black),
                            ),
                          ),
                          Center(
                            child: Text(
                              'مشاور',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

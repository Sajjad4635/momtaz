import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import 'package:mmtaz/assets.dart' as assets;
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:math';

class studentaChatPage extends StatefulWidget {
  @override
  _studentaChatPageState createState() => _studentaChatPageState();
}

class _studentaChatPageState extends State<studentaChatPage> {
  String text;
  TextEditingController _controller;
  final List<String> avatars = [
    assets.avatars[3],
    assets.avatars[4],
  ];
  final List<Message> messages = [
    Message(0, "ساعت مطالعاتیت رو نوشتی؟"),
    Message(1, "خونه ام"),
    Message(0, "کجایی؟"),
    Message(1, "ممنون تو خوبی؟"),
    Message(1, "سلام"),
    Message(0, "خوبی؟"),
    Message(0, "سلام"),
  ];
  final rand = Random();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomPadding: false,
          body: Material(
            child: Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.blue),
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 10.0);
                      },
                      reverse: true,
                      itemCount: messages.length,
                      itemBuilder: (BuildContext context, int index) {
                        Message m = messages[index];
                        if (m.user == 0)
                          return _buildMessageRow(m, current: true);
                        return _buildMessageRow(m, current: false);
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 35,
                  ),
                  Expanded(
                    flex: 1,
                    child: _buildBottomBar(context),
                  )
                ],
              ),
            ),
          )),
    );
  }

  Container _buildBottomBar(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          children: <Widget>[
            Container(height: 1.0, color: Colors.blue),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    textInputAction: TextInputAction.send,
                    controller: _controller,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
//                    border: OutlineInputBorder(
//                        borderRadius: BorderRadius.circular(20.0)),
                      fillColor: Colors.blue,
                      hintText: "متن پیام",
                    ),
                    onEditingComplete: _save,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.attach_file),
                  color: Colors.blue,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  color: Colors.blue,
                  onPressed: _save,
                ),
              ],
            ),
          ],
        ));
  }

  _save() async {
    if (_controller.text.isEmpty) return;
    FocusScope.of(context).requestFocus(FocusNode());
    setState(() {
      messages.insert(0, Message(rand.nextInt(2), _controller.text));
      _controller.clear();
    });
  }

  Row _buildMessageRow(Message message, {bool current}) {
    double c_width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment:
          current ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment:
          current ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: current ? 30.0 : 20.0),
        if (!current) ...[
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
              current ? avatars[0] : avatars[1],
            ),
            radius: 20.0,
          ),
          const SizedBox(width: 5.0),
        ],
        Container(
          constraints:
              BoxConstraints(minWidth: c_width / 5, maxWidth: c_width / 2),
          decoration: BoxDecoration(
              color:
                  current ? Theme.of(context).primaryColor : Color(0xffEEEEEE),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0))),
          child: Container(
            padding: const EdgeInsets.all(9.0),
            child: Text(
              message.description,
              style: TextStyle(
                color: current ? Colors.white : Colors.black,
                fontSize: 18.0,
              ),
              textDirection: TextDirection.rtl,
            ),
          ),
//
        ),
        if (current) ...[
          const SizedBox(width: 5.0),
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
              current ? avatars[0] : avatars[1],
            ),
            radius: 10.0,
          ),
        ],
        SizedBox(width: current ? 20.0 : 30.0),
      ],
    );
  }

//    final chatFieldStudent = TextField(
//      textDirection: TextDirection.rtl,
//      textAlign: TextAlign.start,
//      style: TextStyle(fontSize: 20.0),
//      decoration: InputDecoration(
//          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//          border:
//          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
//    );
//
//    final loginButton = Material(
//      elevation: 5.0,
//      borderRadius: BorderRadius.circular(30.0),
//      color: Color(0xff01A0C7),
//      child: MaterialButton(
//        minWidth: MediaQuery.of(context).size.width,
//        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//        onPressed: () {},
//        child: Text("Login",
//            textAlign: TextAlign.center,
//            style: TextStyle(
//                fontSize: 20.0,
//                color: Colors.white,
//                fontWeight: FontWeight.bold)),
//      ),
//    );
//
//    return SingleChildScrollView(
//          child: Container(
//            height: MediaQuery.of(context).size.height - 110.0,
//            padding: const EdgeInsets.only(right: 15.0, left: 15.0),
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.center,
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Expanded(
//                  flex: 9,
//                  child: Container(
//                    decoration: BoxDecoration(
//                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
//                        border: Border.all(
//                            width: 0.5,
//                            color: Colors.deepPurple
//                        )
//                    ),
////                    child: Column(
////                      children: <Widget>[
////                        Container(
////                          decoration: BoxDecoration(
////                              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0)),
////                              border: Border.all(
////                                  width: 0.5,
////                                  color: Colors.deepPurple
////                              )
////                          ),
////                          color: Color(0xffBC94F6),
////                          child: Center(
////                            child: Text('سلام'),
////                          ),
////                        )
////                      ],
////                    ),
//                  ),
//                ),
//                Expanded(
//                  flex: 1,
//                  child: Container(
//                    decoration: BoxDecoration(
//                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
//                        border: Border.all(
//                            width: 0.5,
//                            color: Colors.deepPurple
//                        )
//                    ),
//                    child: Row(
//                      textDirection: TextDirection.rtl,
//                      children: <Widget>[
//                        Expanded(
//                            flex: 1,
//                            child: Center(
//                              child: Icon(Icons.send),
//                            )
//                        ),
//                        Expanded(
//                          flex: 1,
//                          child: Center(
//                            child: Icon(Icons.attach_file),
//                          ),
//                        ),
//                        Expanded(
//                          flex: 1,
//                          child: Center(
//                            child: Icon(Icons.camera_alt),
//                          ),
//                        ),
//                        Expanded(
//                          flex: 7,
//                          child: Container(
//                            padding: const EdgeInsets.all(5.0),
//                            child: chatFieldStudent,
//                          )
//                        )
//                      ],
//                    ),
//                  ),
//                )
//              ],
//            ),
//          ),
//    );

}

class Message {
  final int user;
  final String description;

  Message(this.user, this.description);
}

class parentChatPage extends StatefulWidget {
  @override
  _parentChatPageState createState() => _parentChatPageState();
}

class _parentChatPageState extends State<parentChatPage> {
  String text;
  TextEditingController _controller;
  final List<String> avatars = [
    assets.avatars[3],
    assets.avatars[4],
  ];
  final List<Message> messages = [
    Message(0, "ساعت مطالعاتیت رو نوشتی؟"),
    Message(1, "خونه ام"),
    Message(0, "کجایی؟"),
    Message(1, "ممنون تو خوبی؟"),
    Message(1, "سلام"),
    Message(0, "خوبی؟"),
    Message(0, "سلام"),
  ];
  final rand = Random();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10.0);
              },
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                Message m = messages[index];
                if (m.user == 0) return _buildMessageRow(m, current: true);
                return _buildMessageRow(m, current: false);
              },
            ),
          ),
          _buildBottomBar(context),
        ],
      ),
    );
  }

  Container _buildBottomBar(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30.0),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 20.0,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              textInputAction: TextInputAction.send,
              controller: _controller,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: "متن پیام",
              ),
              onEditingComplete: _save,
            ),
          ),
          IconButton(
            icon: Icon(Icons.attach_file),
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.send),
            color: Theme.of(context).primaryColor,
            onPressed: _save,
          ),
        ],
      ),
    );
  }

  _save() async {
    if (_controller.text.isEmpty) return;
    FocusScope.of(context).requestFocus(FocusNode());
    setState(() {
      messages.insert(0, Message(rand.nextInt(2), _controller.text));
      _controller.clear();
    });
  }

  Row _buildMessageRow(Message message, {bool current}) {
    double c_width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment:
          current ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment:
          current ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: current ? 30.0 : 20.0),
        if (!current) ...[
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
              current ? avatars[0] : avatars[1],
            ),
            radius: 20.0,
          ),
          const SizedBox(width: 5.0),
        ],
        Container(
          constraints:
              BoxConstraints(minWidth: c_width / 5, maxWidth: c_width / 2),
          decoration: BoxDecoration(
              color: current ? Theme.of(context).primaryColor : Colors.white,
              borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            padding: const EdgeInsets.all(9.0),
            child: Text(
              message.description,
              style: TextStyle(
                color: current ? Colors.white : Colors.black,
                fontSize: 18.0,
              ),
              textDirection: TextDirection.rtl,
            ),
          ),
//
        ),
        if (current) ...[
          const SizedBox(width: 5.0),
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
              current ? avatars[0] : avatars[1],
            ),
            radius: 10.0,
          ),
        ],
        SizedBox(width: current ? 20.0 : 30.0),
      ],
    );
  }
}

//child: Container(
//decoration: BoxDecoration(
//borderRadius: BorderRadius.all(Radius.circular(30.0)),
//border: Border.all(
//width: 0.5,
//color: Colors.deepPurple
//)
//),
//child: Row(
//textDirection: TextDirection.rtl,
//children: <Widget>[
//Expanded(
//flex: 1,
//child: Center(
//child: Icon(Icons.send),
//)
//),
//Expanded(
//flex: 1,
//child: Center(
//child: Icon(Icons.attach_file),
//),
//),
//Expanded(
//flex: 1,
//child: Center(
//child: Icon(Icons.camera_alt),
//),
//),
//Expanded(
//flex: 7,
//child: Center(
//child: TextField(),
//),
//)
//],
//),
//),

class studentaChatPage1 extends StatefulWidget {
  @override
  _studentaChatPage1State createState() => _studentaChatPage1State();
}

class _studentaChatPage1State extends State<studentaChatPage1> {
  @protected
  void initState() {
    super.initState();

    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        print(visible);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.height / 32,
                          left: MediaQuery.of(context).size.height / 32),
                      decoration: BoxDecoration(
                        color: Color(0xff00d170),
                      ),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          Container(
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_forward,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height / 40,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('images/9999.jpg'),
                            backgroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height / 60,
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                'سعید عبدی',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'Aviny',
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.height / 32,
                          left: MediaQuery.of(context).size.height / 32,
                          bottom: MediaQuery.of(context).size.height / 50),
                      decoration: BoxDecoration(
                          color: Color(0xffEAEAEA),
                          borderRadius:
                              BorderRadius.all(Radius.circular(45.0))),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.send,
                              color: Colors.black54,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.attach_file,
                              color: Colors.black54,
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: Container(
                              child: TextField(
                                textAlign: TextAlign.right,
                                decoration: new InputDecoration(
                                  hintText: "پیام",
                                  hintStyle: TextStyle(
                                       fontFamily: 'Aviny'),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.insert_emoticon,
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class studentaChatPage2 extends StatefulWidget {
  @override
  _studentaChatPage2State createState() => _studentaChatPage2State();
}

class _studentaChatPage2State extends State<studentaChatPage2> {
  @protected
  void initState() {
    super.initState();

    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        print(visible);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.height / 32,
                          left: MediaQuery.of(context).size.height / 32),
                      decoration: BoxDecoration(
                        color: Color(0xff00d170),
                      ),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          Container(
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_forward,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height / 40,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('images/9999.jpg'),
                            backgroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height / 60,
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                'سعید عبدی',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'Aviny',
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      child: Center(
                        child: Text(
                          'ارسال پیام خصوصی به مشاور',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'Aviny'
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.height / 32,
                          left: MediaQuery.of(context).size.height / 32,
                          bottom: MediaQuery.of(context).size.height / 50),
                      decoration: BoxDecoration(
                          color: Color(0xffEAEAEA),
                          borderRadius:
                          BorderRadius.all(Radius.circular(45.0))),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.send,
                              color: Colors.black54,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.attach_file,
                              color: Colors.black54,
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: Container(
                              child: TextField(
                                textAlign: TextAlign.right,
                                decoration: new InputDecoration(
                                  hintText: "پیام",
                                  hintStyle: TextStyle(
                                      fontFamily: 'Aviny'),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.insert_emoticon,
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
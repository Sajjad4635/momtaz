import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/Setting.dart';

class chatPageChild extends StatefulWidget {
  @override
  _chatPageChildState createState() => _chatPageChildState();
}

class _chatPageChildState extends State<chatPageChild> {
  var _controller = TextEditingController();
  final List<Message> messages = [
    Message(0, "ساعت مطالعاتیت رو نوشتی؟"),
    Message(1, "خونه ام"),
    Message(0, "کجایی؟"),
    Message(1, "ممنون تو خوبی؟"),
    Message(1, "سلام"),
    Message(0, "خوبی؟"),
    Message(0, "سلام"),
  ];
  _save() async {
    if (_controller.text.isEmpty) return;
    FocusScope.of(context).requestFocus(FocusNode());
    setState(() {
      messages.insert(0, Message(0, _controller.text));
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
        SizedBox(width: current ? 20.0 : 20.0),
        if (!current) ...[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(100.0)),
            child: Image.asset('images/4.jpg', width: 30.0, height: 30.0,fit: BoxFit.cover,),
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
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(100.0)),
            child: Image.asset('images/5.jpg', width: 30.0, height: 30.0,fit: BoxFit.cover,),
          ),],
        SizedBox(width: current ? 20.0 : 30.0),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                      color: color,
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
                          backgroundImage: AssetImage('images/5.jpg'),
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
                  flex: 9,
                  child: Container(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(MediaQuery.of(context).size.width/30.0),
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
                          ),
                          Container(
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
                                  child: IconButton(
                                    onPressed: _save,
                                    icon: Icon(Icons.send),
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
                                      controller: _controller,
                                      textAlign: TextAlign.right,
                                      decoration: new InputDecoration(
                                        hintText: "پیام",
                                        hintStyle: TextStyle(fontFamily: 'Aviny'),
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
                          SizedBox(
                              height: MediaQuery.of(context).viewInsets.bottom),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Message {
  final int user;
  final String description;

  Message(this.user, this.description);
}

class chatPageParent extends StatefulWidget {
  @override
  _chatPageParentState createState() => _chatPageParentState();
}

class _chatPageParentState extends State<chatPageParent> {
  var _controller = TextEditingController();
  final List<MessageP> messages = [
    MessageP(0, "ساعت مطالعاتیت رو نوشتی؟"),
    MessageP(1, "خونه ام"),
    MessageP(0, "کجایی؟"),
    MessageP(1, "ممنون تو خوبی؟"),
    MessageP(1, "سلام"),
    MessageP(0, "خوبی؟"),
    MessageP(0, "سلام"),
  ];
  _save() async {
    if (_controller.text.isEmpty) return;
    FocusScope.of(context).requestFocus(FocusNode());
    setState(() {
      messages.insert(0, MessageP(0, _controller.text));
      _controller.clear();
    });
  }
  Row _buildMessageRow(MessageP messageP, {bool current}) {
    double c_width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment:
      current ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment:
      current ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: current ? 20.0 : 20.0),
        if (!current) ...[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(100.0)),
            child: Image.asset('images/4.jpg', width: 30.0, height: 30.0,fit: BoxFit.cover,),
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
              messageP.description,
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
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(100.0)),
            child: Image.asset('images/5.jpg', width: 30.0, height: 30.0,fit: BoxFit.cover,),
          ),],
        SizedBox(width: current ? 20.0 : 30.0),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                      color: color,
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
                          backgroundImage: AssetImage('images/5.jpg'),
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
                  flex: 9,
                  child: Container(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(MediaQuery.of(context).size.width/30.0),
                              child: ListView.separated(
                                physics: BouncingScrollPhysics(),
                                separatorBuilder: (context, index) {
                                  return const SizedBox(height: 10.0);
                                },
                                reverse: true,
                                itemCount: messages.length,
                                itemBuilder: (BuildContext context, int index) {
                                  MessageP mp = messages[index];
                                  if (mp.user == 0) return _buildMessageRow(mp, current: true);
                                  return _buildMessageRow(mp, current: false);
                                },
                              ),
                            ),
                          ),
                          Container(
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
                                  child: IconButton(
                                    onPressed: _save,
                                    icon: Icon(Icons.send),
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
                                      controller: _controller,
                                      textAlign: TextAlign.right,
                                      decoration: new InputDecoration(
                                        hintText: "پیام",
                                        hintStyle: TextStyle(fontFamily: 'Aviny'),
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
                          SizedBox(
                              height: MediaQuery.of(context).viewInsets.bottom),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MessageP {
  final int user;
  final String description;

  MessageP(this.user, this.description);
}

import 'package:flutter/material.dart';
import 'package:mmtaz/MessageChilds/ChatPageChild.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}


class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue, primarySwatch: Colors.indigo),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomPadding: false,
          body: studentaChatPage(),
        ),

    );
  }
}

class ChatPagesec extends StatefulWidget {
  @override
  _ChatPagesecState createState() => _ChatPagesecState();
}


class _ChatPagesecState extends State<ChatPagesec> {
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue, primarySwatch: Colors.indigo),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            centerTitle: true,
            title: Text('سعید عبدی'),
            actions: <Widget>[
              SizedBox(width: 10.0,),
              Container(
                margin: const EdgeInsets.all(5.0),
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  image: DecorationImage(
                    image: AssetImage("images/5.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height-80.0,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Container(
                      child: Center(
                        child: Text('ارسال پیام خصوصی به مشاور'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                              width: 1.5,
                              color: Color(0xff4EAFF2)
                          )
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
                                fillColor: Color(0xff4EAFF2),
                                hintText: "متن پیام",
                              ),
//                          onEditingComplete: _save,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.attach_file),
                            color: Colors.blue,
                            onPressed: (){

                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.send),
                            color: Colors.blue,
                            onPressed: (){
                              print('${_controller.toString()}');
                              _controller.clear();
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
          ),
        )
      )
    );
  }
}

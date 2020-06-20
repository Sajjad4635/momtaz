import 'package:flutter/material.dart';
import 'package:mmtaz/SelfKnowledgeChilds/quizz/quizz.dart';

class menu extends StatefulWidget {
  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  quizz()));
                    },
                    child: Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5,
                                color: Colors.deepPurple
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15.0))
                        ),
                        child: Center(
                          child: Image.asset('images/2.png', width: 100.0, height: 100.0,),
                        )
                    ),
                  )
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.5,
                            color: Colors.deepPurple
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    child: Center(
                      child: Image.asset('images/4.jpg', width: 100.0, height: 100.0,),
                    ),
                  )
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.5,
                            color: Colors.deepPurple
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    child: Center(
                      child: Image.asset('images/7.png', width: 100.0, height: 100.0,),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

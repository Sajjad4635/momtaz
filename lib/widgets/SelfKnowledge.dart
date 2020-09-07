import 'package:flutter/material.dart';
import 'package:mmtaz/SelfKnowledgeChilds/preExamPage.dart';
import 'package:mmtaz/widgets/Setting.dart';

class SelfKnowledge extends StatefulWidget {
  @override
  _SelfKnowledgeState createState() => _SelfKnowledgeState();
}

class _SelfKnowledgeState extends State<SelfKnowledge> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
            decoration: BoxDecoration(color: color),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEAEAEA),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(45.0))),
                        child: Center(
                          child: Text('برای موفقیت باید خودتو بهتر بشناسی!',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'Aviny',
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xffEAEAEA),
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(45.0)),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffEAEAEA),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(45.0))),
                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              preExamPage()));
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 5,
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height /
                                          40.0),
                                  decoration: BoxDecoration(
                                      color: color,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  child: Row(
                                    textDirection: TextDirection.rtl,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 7,
                                        child: Container(
                                          child: Column(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 5,
                                                child: Container(
                                                  child: Center(
                                                    child: Text(
                                                      'آزمون idbm',
                                                      textDirection:
                                                          TextDirection.rtl,
                                                      style: TextStyle(
                                                        fontSize: 25.0,
                                                        fontFamily: 'Aviny',
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 5,
                                                child: Container(
                                                  child: Center(
                                                    child: Text(
                                                      'آزمون شخصیت شناسی',
                                                      textDirection:
                                                          TextDirection.rtl,
                                                      style: TextStyle(
                                                        fontSize: 25.0,
                                                        fontFamily: 'Aviny',
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          child: Center(
                                            child: Text(
                                              '20 سوال',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                fontSize: 25.0,
                                                fontFamily: 'Aviny',
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          )),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

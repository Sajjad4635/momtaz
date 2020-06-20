import 'package:flutter/material.dart';

class barnameha extends StatefulWidget {
  @override
  _barnamehaState createState() => _barnamehaState();
}

class _barnamehaState extends State<barnameha> {
  @override
  Widget build(BuildContext context) {
    var week = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    var date = [
      '5/1',
      '5/8',
      '5/15',
      '5/22',
      '5/29',
      '6/6',
      '6/13',
      '6/20',
      '6/27',
      '7/4'
    ];
    return MaterialApp(
      home: Scaffold(
        body: Container(
            padding: EdgeInsets.all(16.0),
            child: GridView.builder(
              itemCount: week.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF64B3EA), Color(0xffA9DAFC)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text('هفته ' + '${week[index].toString()}'),
                        ),
                        Center(
                          child: Text('${date[index].toString()}'),
                        )
                      ],
                    ),
                  ),
                );
              },
            )),
      ),
    );
  }
}

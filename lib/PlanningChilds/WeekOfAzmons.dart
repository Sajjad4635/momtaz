import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Week_Of_Azmons extends StatefulWidget {
  @override
  _Week_Of_AzmonsState createState() => _Week_Of_AzmonsState();
}

class _Week_Of_AzmonsState extends State<Week_Of_Azmons> {

  var numOfAzmons = [1,2,3,4,5,6,7,8,9,10];
  var dateOfAzmons = ['5/1', '5/8', '5/15', '5/22', '5/29', '6/6', '6/13', '6/20', '6/27', '7/4'];

  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        body: Container(
            padding: EdgeInsets.all(16.0),
            child: GridView.builder(
              itemCount: numOfAzmons.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index){
                return InkWell(
                  onTap: (){

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF64B3EA), Color(0xffA9DAFC)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text('هفته '+'${numOfAzmons[index].toString()}'),
                        ),
                        Center(
                          child: Text('${dateOfAzmons[index].toString()}'),
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
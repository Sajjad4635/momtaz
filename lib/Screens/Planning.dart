import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/EnterPage.dart';
import 'package:mmtaz/PlanningChilds/planningMenu.dart';

class Planning extends StatefulWidget {
  @override
  _PlanningState createState() => _PlanningState();
}

class _PlanningState extends State<Planning> {
  @override
  Widget build(BuildContext context) {
    var myStyle =
        TextStyle(fontSize: 16.0, color: Colors.black, fontFamily: 'vazir');

    var aa = 2;
    if (aa == 1) {
      return Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'هنوز ورود نکرده اید',
                style: myStyle,
              ),
              Text(
                'وارد شوید و برنامه هفتگی خود را وارد کنید',
                style: myStyle,
              ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Enter_page()));
            },
            child: ClipOval(
              child: Container(
                color: Colors.deepPurple,
                height: 50.0, // height of the button
                width: 50.0, // width of the button
                child: Center(child: Text('ورود', style: TextStyle(fontFamily: 'vazir', color: Colors.white),)),
              ),
            ))
            ],
          ),
        ),
      );
    } else if (aa == 2) {
      return planningMenu();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:mmtaz/PlanningChilds/WeekOfAzmons.dart';

var myStyle =
    TextStyle(fontSize: 24.0, fontFamily: 'vazir', fontWeight: FontWeight.w500);

class nameOfAzmoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Week_Of_Azmons()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/23.jpg'),
                              fit: BoxFit.cover),
                          border: Border.all(width: 0.5, color: Colors.black)),
                    ))),
            SizedBox(
              height: 3.0,
            ),
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Week_Of_Azmons()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/24.jpg'),
                              fit: BoxFit.cover),
                          border: Border.all(width: 0.5, color: Colors.black)),
                    ))),
            SizedBox(
              height: 3.0,
            ),
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Week_Of_Azmons()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/25.png'),
                              fit: BoxFit.cover),
                          border: Border.all(width: 0.5, color: Colors.black)),
                    ))),
            SizedBox(
              height: 3.0,
            ),
          ],
        ),
      ),
    );
  }
}

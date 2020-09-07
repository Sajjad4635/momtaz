import 'package:flutter/material.dart';

class myPlan extends StatefulWidget {
  @override
  _myPlanState createState() => _myPlanState();
}

class _myPlanState extends State<myPlan> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: choices.length,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: FittedBox(
                fit: BoxFit.contain,
                child:
                Text('برنامه شما',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Aviny',
                      color: Colors.white,
                    )),
              ),
              bottom: TabBar(
                isScrollable: true,
                tabs: choices.map((Choice choice) {
                  return Tab(
                    child: Text('${choice.title}', textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Aviny'
                    ),
                    ),
                  );
                }).toList(),
              ),
            ),
            body: TabBarView(
              children: choices.map((Choice choice) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ChoiceCard(choice: choice),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title});

  final String title;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'شنبه',),
  const Choice(title: 'یکشنبه',),
  const Choice(title: 'دوشنبه',),
  const Choice(title: 'سه شنبه',),
  const Choice(title: 'چهارشنبه',),
  const Choice(title: 'پنج شنبه',),
  const Choice(title: 'جمعه',),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
      fontFamily: 'Aviny',
      fontSize: 16.0,
      color: Colors.red
    );
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
import 'dart:async';

import 'package:flutter/material.dart';


class ScrollingText extends StatefulWidget {
  @override
  _ScrollingTextState createState() => _ScrollingTextState();
}

class _ScrollingTextState extends State<ScrollingText>
    with SingleTickerProviderStateMixin {

  Animation animation;
  AnimationController animationController;

  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 6));
    animation = Tween(begin: 0.0, end: 400).animate(animationController)
      ..addListener(() {
        setState(() {

        });
      });
    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery
        .of(context)
        .size
        .width;
    var pageHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Container(
      color: Colors.blueAccent,
      width: 10.0,
      height: 10.0,
        margin: EdgeInsets.only(left: animation.value),
    );
  }
}


//class ScrollingText extends StatefulWidget {
//  final String text;
//  final TextStyle textStyle;
//  final Axis scrollAxis;
//  final double ratioOfBlankToScreen;
//
//  ScrollingText({
//    @required this.text,
//    this.textStyle,
//    this.scrollAxis: Axis.horizontal,
//    this.ratioOfBlankToScreen: 0.25,
//  }) : assert(
//          text != null,
//        );
//
//  @override
//  State<StatefulWidget> createState() {
//    return ScrollingTextState();
//  }
//}
//
//class ScrollingTextState extends State<ScrollingText>
//    with SingleTickerProviderStateMixin {
//  ScrollController scrollController;
//  double screenWidth;
//  double screenHeight;
//  double position = 110.0;
//  Timer timer;
//  final double _moveDistance = 5.0;
//  final int _timerRest = 50;
//  GlobalKey _key = GlobalKey();
//
//  @override
//  void initState() {
//    super.initState();
//    scrollController = ScrollController();
//    WidgetsBinding.instance.addPostFrameCallback((callback) {
//      startTimer();
//    });
//  }
//
//  void startTimer() {
//    if (_key.currentContext != null) {
//      double widgetWidth =
//          _key.currentContext.findRenderObject().paintBounds.size.width;
//      double widgetHeight =
//          _key.currentContext.findRenderObject().paintBounds.size.height;
//
//      timer = Timer.periodic(Duration(milliseconds: _timerRest), (timer) {
//        double maxScrollExtent = scrollController.position.maxScrollExtent;
////        double maxScrollExtent = scrollController.position.maxScrollExtent;
//        double pixels = scrollController.position.pixels;
//        if (pixels + _moveDistance <= maxScrollExtent) {
//          print('to if aval');
//          if (widget.scrollAxis == Axis.horizontal) {
//            print('to if dovom');
//            position = (maxScrollExtent + screenWidth * widget.ratioOfBlankToScreen - widgetWidth) / 2 + widgetWidth + pixels + maxScrollExtent;
//            print(position);
////            position = (maxScrollExtent - screenWidth * widget.ratioOfBlankToScreen + widgetWidth) / 2 - widgetWidth + pixels - maxScrollExtent;
//          } else {
//            print('to else');
//            position = (maxScrollExtent + screenWidth * widget.ratioOfBlankToScreen - widgetWidth) / 2 + widgetWidth - pixels + maxScrollExtent;
//          }
//          scrollController.jumpTo(position);
//        }
//        position -= _moveDistance;
//        scrollController.animateTo(position,
//            duration: Duration(milliseconds: _timerRest), curve: Curves.linear);
//      });
//    }
//  }
//
//  @override
//  void didChangeDependencies() {
//    super.didChangeDependencies();
//    screenWidth = MediaQuery.of(context).size.width;
//    screenHeight = MediaQuery.of(context).size.height;
//  }
//
//  Widget getBothEndsChild() {
//    if (widget.scrollAxis == Axis.vertical) {
//      String newString = widget.text.split("").join("\n");
//      return Center(
//        child: Text(
//          newString,
//          style: widget.textStyle,
//          textAlign: TextAlign.center,
//        ),
//      );
//    }
//    return Center(
//        child: Text(
//      widget.text,
//      style: widget.textStyle,
//    ));
//  }
//
//  Widget getCenterChild() {
//    if (widget.scrollAxis == Axis.horizontal) {
//      return Container(width: screenWidth * widget.ratioOfBlankToScreen);
//    } else {
//      return Container(height: screenHeight * widget.ratioOfBlankToScreen);
//    }
//  }
//
//  @override
//  void dispose() {
//    super.dispose();
//    if (timer != null) {
//      timer.cancel();
//    }
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return ListView(
//      key: _key,
//      scrollDirection: widget.scrollAxis,
//      controller: scrollController,
//      physics: NeverScrollableScrollPhysics(),
//      children: <Widget>[
////        getBothEndsChild(),
//        getCenterChild(),
//        getBothEndsChild(),
//        getCenterChild(),
//
//
//      ],
//    );
//  }
//}

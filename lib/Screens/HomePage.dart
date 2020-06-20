import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';
import 'package:mmtaz/HomePageChilds/fetchHomePage.dart';
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/models/imageSliderModel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<imageSlider> ImageSlider = [];
  var message;
  var logo;

  @override
  void initState() {
    super.initState();
    _getImagesForSlider();
  }

  _getImagesForSlider() async {
    var response = await getimageSlider.getimages();

    setState(() {
      ImageSlider.addAll(response['slider']);
      message = response['message'];
      logo = response['logo'];
    });
  }

  var myStyle =
      TextStyle(fontFamily: 'vazir', fontSize: 16.0, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    var pagewidth = MediaQuery.of(context).size.width;
    var pageheight = MediaQuery.of(context).size.height;
    return Container(
      child: ImageSlider.isEmpty?
          CircularProgressIndicator():
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFA8EC46), Color(0xFF5DC2F6)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 5.0,
            ),
            Container(
                width: pagewidth - 15.0,
                height: 40.0,
                decoration: BoxDecoration(
//            border: Border.all(
//              width: 0.0,
////              color: Colors.deepPurple,
//            ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Marquee(
                    child: Container(
                      color: Colors.black.withOpacity(0.7),
                      child: Text(
                        '${message}'.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                    direction: Axis.horizontal,
                    textDirection: TextDirection.ltr,
                    animationDuration: Duration(seconds: 2),
                    backDuration: Duration(milliseconds: 10000),
                    pauseDuration: Duration(milliseconds: 500),
                    directionMarguee: DirectionMarguee.TwoDirection,
                  ),
                )
            ),
            SizedBox(
              height: 15.0,
            ),
            CarouselSlider(
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: Duration(seconds: 6),
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              height: MediaQuery.of(context).size.height * 0.5,
              items: ImageSlider.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        child: Container(
                            width: MediaQuery.of(context).size.width - 20.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.5, color: Colors.deepPurple),
                                borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        imageUrl: 'http://192.168.1.101:8080/images/' +
                                    '${i.ImageVlaue}'.toString(),
                        placeholder: (context, url) => CircularProgressIndicator(),
                        fit: BoxFit.cover,
                      ),
//                              child: Image.network(
//                                'http://192.168.1.101:8080/images/' +
//                                    '${i.ImageVlaue}'.toString(),
//                                fit: BoxFit.fill,
//                              ),
                            )));
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              child: Center(
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    child: ClipRRect(
                      //clipBehavior: Clip.antiAlias,
                        borderRadius: new BorderRadius.circular(100.0),
                        child: Image.network(api.siteName + "/as/images/404.png", fit: BoxFit.cover,)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

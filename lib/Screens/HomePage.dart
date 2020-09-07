import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';
import 'package:mmtaz/HomePageChilds/HomePageModel.dart';
import 'package:mmtaz/HomePageChilds/fetchHomePage.dart';
import 'package:mmtaz/widgets/Setting.dart';

List<imageSlider> sliderImages = new List();
var message;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var List = ['11.jpg', '12.jpg', '13.jpg'];
  var myStyle =
      TextStyle(fontFamily: 'vazir', fontSize: 16.0, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    setState(() {
      getHomePage();
    });
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xffeaeaea),
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45.0),
                  )
                ),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'موفقیت اتفاقی نیست!',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Aviny'),
                  ),
                )
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              color: color,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffeaeaea),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(45.0),
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Center(
                          child: Container(
                            padding: const EdgeInsets.only(
                                right: 12.0, left: 12.0, top: 10.0, bottom: 8.0),
                            margin: const EdgeInsets.only(right: 25.0, left: 25.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(1.0, 3.0),
                                    blurRadius: 5.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.all(Radius.circular(45.0))),
                            child: MarqueeMeethode(),
                          ),
                        )),
                    Expanded(
                        flex: 8,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(45.0),
                                  topRight: Radius.circular(45.0)),
                              gradient: LinearGradient(
                                  colors: [Color(0xffEAEAEA), Color(0xffEAEAEA)])),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(8.0))),
                            child: SliderImage(),
                          ),
                        ))
//            moshverLogo(),
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }

  MarqueeMeethode() {
    var Textm =
        'بده ساقی می باقی که در جنت نخواهی یافت کنار آب رکن آباد و گلگشت مصلی را';
    return Marquee(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
        ),
        child: Container(
          child: Text(
            Textm,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Color(0xff555555),
              fontSize: 20.0,
              fontFamily: 'Aviny',
            ),
          ),
        ),
      ),
      direction: Axis.horizontal,
      textDirection: TextDirection.ltr,
      animationDuration: Duration(seconds: 2),
      backDuration: Duration(milliseconds: Textm.length * 150),
      pauseDuration: Duration(milliseconds: 500),
      directionMarguee: DirectionMarguee.TwoDirection,
    );
  }

  SliderImage() {
    return CarouselSlider(
      aspectRatio: 16 / 9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 5),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      pauseAutoPlayOnTouch: Duration(seconds: 6),
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
      height: MediaQuery.of(context).size.height * 0.5,
      items: List.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                child: Container(
                    margin: const EdgeInsets.only(right: 7.0, left: 7.0),
                    width: MediaQuery.of(context).size.width - 10.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35.0),
                      child: Image.asset(
                        'images/' + '${i}',
                        fit: BoxFit.cover,
                      ),
                    )));
          },
        );
      }).toList(),
    );
  }

  moshverLogo() {
    return Container(
      child: Center(
          child: Container(
        width: 50.0,
        height: 50.0,
        child: ClipRRect(
            //clipBehavior: Clip.antiAlias,
            borderRadius: new BorderRadius.circular(100.0),
            child: Image.asset('images/11.jpg', fit: BoxFit.cover)),
      )),
    );
  }

  getHomePage() async{
      var response = await getimageSlider
          .getimages();
      setState(() {
        sliderImages.clear();
        message = response['message'];
        sliderImages.addAll(
            response['slider']);
      });
    }
}

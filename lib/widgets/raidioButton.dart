import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  @override
  createState() {
    return new CustomRadioState();
  }
}

class CustomRadioState extends State<CustomRadio> {
  List<RadioModel> sampleData = new List<RadioModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(false, '1000', 'تومان', 1000));
    sampleData.add(new RadioModel(false, '2000', 'تومان', 2000));
    sampleData.add(new RadioModel(false, '5000', 'تومان', 5000));
    sampleData.add(new RadioModel(false, '10000', 'تومان', 10000));
    sampleData.add(new RadioModel(false, '20000', 'تومان', 20000));
    sampleData.add(new RadioModel(false, '30000', 'تومان', 30000));
    sampleData.add(new RadioModel(false, '40000', 'تومان', 40000));
    sampleData.add(new RadioModel(false, '50000', 'تومان', 50000));
    sampleData.add(new RadioModel(false, '100000', 'تومان', 100000));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("ListItem"),
//      ),

        body: Container(
          child: Directionality(
              textDirection: TextDirection.rtl,
              child: new Container(
                child: ListView.builder(
                  itemCount: sampleData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new InkWell(
                      //highlightColor: Colors.red,
                      splashColor: Color(0xff00d170),
                      onTap: () {
                        setState(() {
                          sampleData.forEach((element) => element.isSelected = false);
                          sampleData[index].isSelected = true;
                        });
                      },
                      child: new RadioItem(sampleData[index]),
                    );
                  },
                ),
              )
          ),
        ));
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;

  RadioItem(this._item);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: new EdgeInsets.all(15.0),
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Container(
                height: 50.0,
                width: 50.0,
                child: new Center(
                  child: new Text(_item.buttonText,
                      style: new TextStyle(
                          color: _item.isSelected ? Colors.white : Colors.black,
                          //fontWeight: FontWeight.bold,
                          fontSize: 14.0)),
                ),
                decoration: new BoxDecoration(
                  color:
                      _item.isSelected ? Color(0xff00d170) : Colors.transparent,
                  border: new Border.all(
                      width: 1.0,
                      color:
                          _item.isSelected ? Color(0xff00d170) : Colors.grey),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(2.0)),
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              new Container(
                margin: new EdgeInsets.only(left: 10.0),
                child: new Text(_item.text),
              ),
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}

class RadioModel {
  bool isSelected;
  final String buttonText;
  final String text;
  final int buttonTextVal;

  RadioModel(this.isSelected, this.buttonText, this.text, this.buttonTextVal);
}

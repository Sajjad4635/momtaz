import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/Setting.dart';
import 'package:mmtaz/widgets/raidioButton.dart';

class wallet extends StatefulWidget {
  @override
  _walletState createState() => _walletState();
}

class _walletState extends State<wallet> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
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
                                  '',
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
                          InkWell(
                            onTap: () {
//                              Navigator.push(
//                                  context,
//                                  MaterialPageRoute(
//                                    builder: (context) => wallet(),
//                                  ));
                            },
                            child: Icon(Icons.shopping_basket, color: color),
                          )
                        ],
                      ),
                    )
                  ],
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        child: Container(
                          child: Center(
                            child: Text(
                              'شارژ کردن کیف پول',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontFamily: 'Aviny',
                                  fontSize: 17.0,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ),
                      Tab(child: Container(
                        child: Center(
                          child: Text(
                            'لیست تراکنش ها',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'Aviny',
                                fontSize: 17.0,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),),
                    ],
                  ),
                ),
              ),
              body: TabBarView(
                children: [
                  chargeWallet(),
                  ListOfTransactions()
                ],
              ),),
        ),
      ),
    );
  }
}

class chargeWallet extends StatefulWidget {
  @override
  _chargeWalletState createState() => _chargeWalletState();
}

class _chargeWalletState extends State<chargeWallet> {
  @override
  Widget build(BuildContext context) {
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(color: color),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  width: pageWidth,
                  decoration: BoxDecoration(
                    color: Color(0xffEAEAEA),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45.0))),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                          'کیف پولتو شارژ کن تا همیشه برنامه داشته باشی!',
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
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(45.0)),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffEAEAEA),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(45.0))),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  left:
                                  MediaQuery.of(context).size.width /
                                      50.0,
                                  right:
                                  MediaQuery.of(context).size.width /
                                      50.0,
                                ),
                                decoration: BoxDecoration(
                                    color: color,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(45.0))),
                                child: Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    FittedBox(
                                      fit: BoxFit.contain,
                                      child:  Text('موجودی شما',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                            fontFamily: 'Aviny',
                                            color: Colors.white,
                                          )),
                                    ),
                                    FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text('20000  تومان',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                            fontFamily: 'Aviny',
                                            color: Colors.white,
                                          )),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height / 50.0,
                          ),
                          Expanded(
                            flex: 8,
                            child: CustomRadio(),
                          ),
                          SizedBox(
                            height:
                            MediaQuery.of(context).size.height / 50.0,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width:
                              MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(45.0))),
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text('پرداخت',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'Aviny',
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
            ]),
      ),
    );
  }
}

class ListOfTransactions extends StatefulWidget {
  @override
  _ListOfTransactionsState createState() => _ListOfTransactionsState();
}

class _ListOfTransactionsState extends State<ListOfTransactions> {
  @override
  Widget build(BuildContext context) {
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(color: color),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  width: pageWidth,
                  decoration: BoxDecoration(
                    color: Color(0xffEAEAEA),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45.0))),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                          'اینجا میتونی لیست همه تراکنش هات رو ببینی!',
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
                    padding: EdgeInsets.all(pageWidth/20.0),
                    decoration: BoxDecoration(
                        color: Color(0xffeaeaea),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(45.0)
                        )
                    ),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: pageHeight/10,
                              margin: EdgeInsets.only(bottom: 5.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: color),
                                  color: color,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                            'تاریخ',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'Aviny',
                                              fontSize: 17.0,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                            'مبلغ',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'Aviny',
                                              fontSize: 17.0,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ),
                                  ),Expanded(
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                            'وضعیت',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'Aviny',
                                              fontSize: 17.0,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ),
                                  ),Expanded(
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                            'شناسه پرداخت',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'Aviny',
                                              fontSize: 17.0,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 8,
                            child: ListView.builder(
                              itemCount: 20,
                              itemBuilder: (context, index){
                                return Container(
                                  height: pageHeight/10,
                                  margin: EdgeInsets.only(bottom: 5.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: color),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                                  ),
                                  child: Row(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          child: Center(
                                            child: Text(
                                                '1399/5/8',
                                                textDirection: TextDirection.rtl,
                                                style: TextStyle(
                                                  fontFamily: 'Aviny',
                                                  fontSize: 17.0,
                                                  color: Colors.black54,
                                                )),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Center(
                                            child: Text(
                                                '50000',
                                                textDirection: TextDirection.rtl,
                                                style: TextStyle(
                                                  fontFamily: 'Aviny',
                                                  fontSize: 17.0,
                                                  color: Colors.black54,
                                                )),
                                          ),
                                        ),
                                      ),Expanded(
                                        child: Container(
                                          child: Center(
                                            child: Text(
                                                'موفق',
                                                textDirection: TextDirection.rtl,
                                                style: TextStyle(
                                                  fontFamily: 'Aviny',
                                                  fontSize: 17.0,
                                                  color: Colors.green,
                                                )),
                                          ),
                                        ),
                                      ),Expanded(
                                        child: Container(
                                          child: Center(
                                            child: Text(
                                                '15685486',
                                                textDirection: TextDirection.rtl,
                                                style: TextStyle(
                                                  fontFamily: 'Aviny',
                                                  fontSize: 17.0,
                                                  color: Colors.black54,
                                                )),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  )
              )
            ]),
      ),
    );
  }
}

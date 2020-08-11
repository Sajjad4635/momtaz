import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Plugin example app',
    home: Weekly_Schedule(),
  ));
}

class Weekly_Schedule extends StatefulWidget {
  @override
  _Weekly_ScheduleState createState() => _Weekly_ScheduleState();
}

class _Weekly_ScheduleState extends State<Weekly_Schedule> {
  String pathPDF = "http://dl.ponel.ir/book/melat.eshgh.pdf";

  @override
  void initState() {
    super.initState();
    createFileOfPdfUrl().then((f) {
      setState(() {
        pathPDF = f.path;
        print(pathPDF);
      });
    });
  }

  Future<File> createFileOfPdfUrl() async {
    final url = "http://africau.edu/images/default/sample.pdf";
    final filename = url.substring(url.lastIndexOf("/") + 1);
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
//    String dir = (await getApplicationDocumentsDirectory()).path;
//    File file = new File('$dir/$filename');
//    await file.writeAsBytes(bytes);
//    return file;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Plugin example app')),
      body: Center(
        child: RaisedButton(
          child: Text("Open PDF"),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PDFScreen(pathPDF)),
          ),
        ),
      ),
    );
  }
}

class PDFScreen extends StatelessWidget {
  String pathPDF = "pdfs/123.pdf";
  PDFScreen(this.pathPDF);

  @override
  Widget build(BuildContext context) {
//    return PDFViewerScaffold(
//        appBar: AppBar(
//          title: Text("Document"),
//          actions: <Widget>[
//            IconButton(
//              icon: Icon(Icons.share),
//              onPressed: () {},
//            ),
//          ],
//        ),
//        path: pathPDF);
  }

}

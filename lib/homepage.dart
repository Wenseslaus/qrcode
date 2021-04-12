import 'package:flutter/material.dart';
import 'package:qrcode/generate.dart';
import 'package:qrcode/scan.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan Options"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Image(
            //     image: NetworkImage(
            //         "https://www.strikingly.com/content/static/c80863fcc672de0853cb7a4ea5f1a7cb/d17c2/2020-07-28-qr-code-generator.jpg")),
            flatButton("Scan the Code", ScanPage()),
            SizedBox(
              height: 20.0,
            ),
            flatButton("Generate the Code", GeneratePage()),
          ],
        ),
      ),
    );
  }
  
  Widget flatButton(String text, Widget widget) {
    return FlatButton(
      padding: EdgeInsets.all(20.0),
      onPressed: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.circular(05.0)),
    );
  }
}

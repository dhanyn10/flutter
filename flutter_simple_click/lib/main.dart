import "package:flutter/material.dart";

void main () {
  runApp(new MaterialApp(
    home: new myApp()
  ));
}

class myApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<myApp> {
  String judul = "Welcome";

  void onClick() {
    setState(() {
      judul = "Ayo main!";
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(judul),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(
            children: [
              new Text("Hello"),
              new ElevatedButton(onPressed: onClick, child: new Text("Click me"))
            ],
          ),
        ),
      ),
    );
  }
}
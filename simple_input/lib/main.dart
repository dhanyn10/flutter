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
  String mytext = "";
  void onSubmit(String value) {
    setState(() => mytext = "Submit: ${value}");
  }
  @override
  Widget build(BuildContext ctx) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Simple Input"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(5.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(mytext),
              new TextField(
                decoration: new InputDecoration(
                  labelText: "your text",
                  hintText: "your text here",
                  icon: new Icon(Icons.numbers)
                ),
                autofocus: true,
                keyboardType: TextInputType.number,
                onSubmitted: onSubmit,
              )
            ],
          ),
        ),
      ),
    );
  }
}
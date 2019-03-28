import 'package:flutter/material.dart';
import 'mycustomwidget.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyApplicationState();
  }
}


class _MyApplicationState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Custom Widget',
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: MyCustomWidget(),
        appBar: new AppBar(
          title: new Text('Demo Custom Widget'),
          backgroundColor: Colors.deepOrange,
        ),
      ),

    );
  }
}
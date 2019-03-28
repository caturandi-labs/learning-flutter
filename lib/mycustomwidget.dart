import 'package:flutter/material.dart';

void main() {
  runApp(new MyCustomWidget());
}

class MyCustomWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ApplicationState();
  }
}

class _ApplicationState extends State<MyCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.blue,
      child: new Container(
        color: Colors.greenAccent,
        margin: EdgeInsets.all(15.0),
        child: new Container(
          color: Colors.yellow,
          margin: const EdgeInsets.all(20.0),
          child: new Container(
            color: Colors.deepPurpleAccent,
            margin: const EdgeInsets.all(25.0),
            child: new Container(
              color: Colors.deepOrangeAccent,
              margin: const EdgeInsets.all(30.0),
              child: new Container(
                color: Colors.lightGreen,
                margin: const EdgeInsets.all(15.0),
                child: methodCustom(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget methodCustom() {
  return new Container(
    color: Colors.deepPurple,
    margin: const EdgeInsets.all(10.0),
  );
}
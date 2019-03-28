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
  //initial state widget
  String username = "";
  String password = "";
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Custom Widget',
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Demo Custom Widget'),
          backgroundColor: Colors.deepOrange,
        ),
        body: new Container(
          padding: EdgeInsets.all(20.0),
          child: new Column(
            children: <Widget>[
              new Container(
                margin: EdgeInsets.only(top: 10.0),
                child: new TextField(
                  onChanged: (String txt) {this.handleOnChange(txt);},
                  decoration: new InputDecoration(
                      hintText: 'Input Username',
                      labelText: 'Username',
                      enabledBorder: new OutlineInputBorder(
                          borderSide: new BorderSide(
                              width: 1.0,
                              color: Colors.grey,
                              style: BorderStyle.solid
                          )
                      )
                  ),
                ),
              ),
              new Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: new TextField(
                  onChanged: (String pass){
                    setState(() {
                      password = pass;
                    });
                  },
                  decoration:  new InputDecoration(
                      labelText: 'Password',
                      hintText: 'Input Password',
                      enabledBorder: new OutlineInputBorder(
                          borderSide: new BorderSide(
                              width: 1.0,
                              color: Colors.grey,
                              style: BorderStyle.solid
                          )
                      )
                  ),
                ),
              )
            ],
          ),
        )
      ),

    );
  }

  void handleOnChange(String str) {
    this.setState((){
        username = str;
    });
  }
}
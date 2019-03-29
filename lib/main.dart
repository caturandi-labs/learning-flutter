import 'package:flutter/material.dart';
import 'mycustomwidget.dart';
import './menu/menu_drawer.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

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
  String textLogin = "";

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    FlutterStatusbarcolor.setStatusBarColor(Colors.deepOrange);
    return new MaterialApp(
      title: 'Custom Widget',
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Demo Custom Widget'),
          backgroundColor: Colors.deepOrange,
        ),
        drawer: MenuDrawer(),
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
                  obscureText: true,
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
                          ),

                      ),

                  ),
                ),
              ),
              new Container(
                width: 300,
                height: 50,
                margin: EdgeInsets.only(top: 20.0),
                child: new RaisedButton(
                  onPressed: (){
                    this.handleLogin();
                  },
                  child: new Text('LOGIN'),
                ),
              ),
              new Container(

                margin: EdgeInsets.only(top: 20.0),
                child: new Text(textLogin)
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

  void handleLogin() {
    this.setState((){
      textLogin = "${username} Mencoba Login ";
    });
  }
}
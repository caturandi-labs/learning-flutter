import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp(),));
}

class MyApp extends StatefulWidget {
  @override
  _MyApplicationWidget createState() => _MyApplicationWidget();
}

class _MyApplicationWidget extends State<MyApp> {
    
  List<int> listNumber = new List();
  String txt = "";
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i = 0; i<30; i++ ) {
      listNumber.add(i);
    }
  }
  
  void handleButtonIcon(String text){
    txt = text;
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightBlue,
        title: new Text('Coba Grid View'),
        leading: new Icon(Icons.menu),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.add), onPressed: (){this.handleButtonIcon('Test');}),
          new IconButton(icon: new Icon(Icons.search), onPressed: (){this.handleButtonIcon('Test2');}),

        ],
      ),
      body: new GridView.builder(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
          itemCount: listNumber.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
            return new Card(
              color: Colors.black12,
              child: new Text(txt, textAlign: TextAlign.center),
            );
          }
      ),
    );
  }

}
import 'package:flutter/material.dart';
import '../pages/orders.dart';

void main() {
  runApp(MenuDrawer());
}

class MenuDrawer extends StatefulWidget  {
  @override
  State<StatefulWidget> createState() {
    return _MenuDrawerState();
  }
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(

      child: new GestureDetector(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Catur Andi'),
              accountEmail: Text('catur.andi.pamungkas@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white
                , child: new Text('C'),
              ),
              decoration: new BoxDecoration(
                color: Colors.orange
              ),
            ),
            new ListTile(
              onTap: (){
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>
                  new Orders()
                ));
              },
              title: new Text('Homepage'),
              trailing: new Icon(Icons.home),
            ),
            new ListTile(
              onTap: () =>
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>
                  new Orders()
                ))
              ,
              title: new Text('Orders'),
              trailing: new Icon(Icons.add_box),
            ),
            new ListTile(
              title: new Text('Order Histories'),
              trailing: new Icon(Icons.history),
              onTap: (){

              },
            )
          ],
        ),
      )
    );
  }

}
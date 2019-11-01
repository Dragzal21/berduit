import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "My Apps",
    home: new Halamanempat(),
  ));
}

class Halamanempat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Drawer"),
      ),
      drawer: Drawer(
          child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
        
            UserAccountsDrawerHeader(
              accountName: new Text("Riza"),
              accountEmail: new Text("riza@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: NetworkImage("https://code.byriza.com/lib/img/logo.png"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Item 1'),
              onTap: () {
                
              },
            ),
            ListTile(
              title: Text('Item 2'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                
              },
            ),
            ListTile(
              title: Text('Item 3'),
              onTap: () {
                
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Drawer"),
      ),
    );
  }
}
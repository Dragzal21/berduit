import 'package:flutter/material.dart';




class RekapPage extends StatefulWidget {
  static String tag = 'Rekap-page';
  @override
  _RekapPageState createState() => new _RekapPageState();
}

class _RekapPageState extends State<RekapPage> {
  @override

    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rekap"),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      
                    ],
                  )
                ],
              )


            ],
          )
        ],
      ),
      
      
      
      
    );
  }
}

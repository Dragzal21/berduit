import 'package:flutter/material.dart';




class SetoranPage extends StatefulWidget {
  static String tag = 'Setoran-page';
  @override
  _SetoranPageState createState() => new _SetoranPageState();
}

class _SetoranPageState extends State<SetoranPage> {
  @override

    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setoran"),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10.0),
                            child: new InkWell(
                            onTap: () => {},
                            child: new Container(                            
                              //width: 100.0,
                              height: 50.0,
                              decoration: new BoxDecoration(
                                color: Colors.lightGreenAccent,
                                border: new Border.all(color: Colors.white, width: 2.0),
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: new Center(child: new Text('Biaya', style: new TextStyle(fontSize: 18.0, color: Colors.black54, fontWeight: FontWeight.bold),),),
                            ),
                            ),
                          ),

                          SizedBox(height: 10.0),

                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10.0),
                            child: new InkWell(
                            onTap: () => {},
                            child: new Container(                            
                              //width: 100.0,
                              height: 50.0,
                              decoration: new BoxDecoration(
                                color: Colors.lightGreenAccent,
                                border: new Border.all(color: Colors.white, width: 2.0),
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: new Center(child: new Text('Biaya', style: new TextStyle(fontSize: 18.0, color: Colors.black54, fontWeight: FontWeight.bold),),),
                            ),
                            ),
                          ),

                          SizedBox(height: 10.0),

                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10.0),
                            child: new InkWell(
                            onTap: () => {},
                            child: new Container(                            
                              //width: 100.0,
                              height: 50.0,
                              decoration: new BoxDecoration(
                                color: Colors.lightGreenAccent,
                                border: new Border.all(color: Colors.white, width: 2.0),
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: new Center(child: new Text('Biaya', style: new TextStyle(fontSize: 18.0, color: Colors.black54, fontWeight: FontWeight.bold),),),
                            ),
                            ),
                          ),

                          SizedBox(height: 10.0),

                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10.0),
                            child: new InkWell(
                            onTap: () => {},
                            child: new Container(                            
                              //width: 100.0,
                              height: 50.0,
                              decoration: new BoxDecoration(
                                color: Colors.lightGreenAccent,
                                border: new Border.all(color: Colors.white, width: 2.0),
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: new Center(child: new Text('Biaya', style: new TextStyle(fontSize: 18.0, color: Colors.black54, fontWeight: FontWeight.bold),),),
                            ),
                            ),
                          ),

                          SizedBox(height: 10.0),

                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10.0),
                            child: new InkWell(
                            onTap: () => {},
                            child: new Container(                            
                              //width: 100.0,
                              height: 50.0,
                              decoration: new BoxDecoration(
                                color: Colors.lightGreenAccent,
                                border: new Border.all(color: Colors.white, width: 2.0),
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: new Center(child: new Text('Biaya', style: new TextStyle(fontSize: 18.0, color: Colors.black54, fontWeight: FontWeight.bold),),),
                            ),
                            ),
                          ),

                          SizedBox(height: 10.0),

                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10.0),
                            child: new InkWell(
                            onTap: () => {},
                            child: new Container(                            
                              //width: 100.0,
                              height: 50.0,
                              decoration: new BoxDecoration(
                                color: Colors.lightGreenAccent,
                                border: new Border.all(color: Colors.white, width: 2.0),
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: new Center(child: new Text('Biaya', style: new TextStyle(fontSize: 18.0, color: Colors.black54, fontWeight: FontWeight.bold),),),
                            ),
                            ),
                          ),

                        ],
                      ),
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

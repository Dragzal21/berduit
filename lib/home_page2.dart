import 'package:flutter/material.dart';
import 'package:login_pages/setoran.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class HomePage2 extends StatelessWidget {
  static String tag = 'home-page2';

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 280.0,
                    color: Colors.lightGreenAccent,
                  ),
                  Positioned(
                    bottom:  200.0,
                    right: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        gradient: LinearGradient(colors: [
                          Colors.white10,
                          Colors.lightGreenAccent,
                        ]),
                      ),
                    ),
                  ),
                  
                  Positioned(
                    bottom:  280.0,
                    right: -50.0,
                    child: Container(
                      height: 250.0,
                      width: 250.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        gradient: LinearGradient(colors: [
                          Colors.white10,
                          Colors.lightGreenAccent,
                        ]),
                      ),
                    ),
                  ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 15.0),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width/1.15,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: (){},
                          color: Colors.white,
                          iconSize: 30.0,
                        ),
                      )
                    ],
                  ),
              SizedBox(height: 50.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Hallo Selamat Datang',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Nunito',
                    color: Colors.black45,
                    fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Silahkan pilih Apa yang kamu mau?',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'Nunito',
                    color: Colors.black45,
                    fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(height: 40.0,),

//widgget menu
              Column(
                children: <Widget>[
                new Row(
                  children: <Widget>[
                  SizedBox(width: 10.0),
                  new Expanded(
                    child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                         boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 7.0,
                            spreadRadius: -10.0,
                            offset: Offset(
                              4.0,
                              4.0,
                            ),
                          ),
                        ],
                        borderRadius: new BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                          padding: EdgeInsets.fromLTRB(70.0, 15.0, 70.0, 15.0),
                          onPressed: (){
                            Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new SetoranPage()
                            )
                          );
                          },
                          child: Column(
                            children: <Widget>[
                              new Icon(Icons.folder_open, size: 50.0, color: Colors.lightGreenAccent),
                              new Text("Setoran", style: new TextStyle(color: Colors.black)),
                            ], 
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 10.0),

                  new Expanded(
                    child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 7.0,
                            spreadRadius: -10.0,
                            offset: Offset(
                              4.0,
                              4.0,
                            ),
                          ),
                        ],
                        borderRadius: new BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                          padding: EdgeInsets.fromLTRB(55.0, 15.0, 70.0, 15.0),
                          onPressed: (){},
                          child: Column(
                            children: <Widget>[
                              new Icon(Icons.folder_shared, size: 50.0, color: Colors.lightGreenAccent),
                              new Text("Simpanan", style: new TextStyle(color: Colors.black)),
                            ], 
                          ),
                          ),
                        ],
                      ),
                    )
                  ),

                 SizedBox(width: 10.0),
                
                  ],
                ),

              SizedBox(height: 10.0),

                new Row(                  
                  children: <Widget>[
                    SizedBox(width: 10.0),
                    new Expanded(
                    child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                         boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 7.0,
                            spreadRadius: -10.0,
                            offset: Offset(
                              4.0,
                              4.0,
                            ),
                          ),
                        ],
                        borderRadius: new BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                          padding: EdgeInsets.fromLTRB(70.0, 15.0, 70.0, 15.0),
                          onPressed: (){},
                          child: Column(
                            children: <Widget>[
                              new Icon(Icons.receipt, size: 50.0, color: Colors.lightGreenAccent),
                              new Text("Rekap", style: new TextStyle(color: Colors.black)),
                            ], 
                          ),
                          ),
                        ],
                      ),
                    )
                  ),

                  SizedBox(width: 10.0),

                  new Expanded(
                    child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                         boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 7.0,
                            spreadRadius: -10.0,
                            offset: Offset(
                              4.0,
                              4.0,
                            ),
                          ),
                        ],
                        borderRadius: new BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                          
                          padding: EdgeInsets.fromLTRB(60.0, 15.0, 70.0, 15.0),
                          onPressed: (){},
                          child: Column(
                            children: <Widget>[
                              new Icon(Icons.publish, size: 50.0, color: Colors.lightGreenAccent),
                              new Text("Tambahan", softWrap: false, style: new TextStyle(color: Colors.black)),
                            ], 
                          ),
                          ),
                        ],
                      ),
                    )
                  ),

                  SizedBox(width: 10.0),

                  ],
                )
                ],
              ),

              SizedBox(height: 5.0),

//           new Column(
//             children: <Widget>[               
//              Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: CarouselSlider(
//                 enableInfiniteScroll: true,
//                 reverse: false,
//                 autoPlay: true,
//                 autoPlayInterval: Duration(seconds: 3),
//                 autoPlayAnimationDuration: Duration(milliseconds: 800),
//                 pauseAutoPlayOnTouch: Duration(seconds: 10),
//                scrollDirection: Axis.horizontal,
//                 height: 160.0,
//                items: [
//                  new AssetImage('assets/foto1.jpg'),
//                   new AssetImage("assets/foto2.jpg"),
//                   new AssetImage("assets/foto2.jpg")
//                 ].map((i) {
//                   return Builder(
//                     builder: (BuildContext context) {
//                       return Container(
//                         width: MediaQuery.of(context).size.width,
//                         margin: EdgeInsets.symmetric(horizontal: 5.0),
//                         decoration: BoxDecoration(
//                           borderRadius: new BorderRadius.circular(10.0),
//                           color: Colors.lightGreenAccent
//                         ),
//                         child: Text('hallo ini banner', style: TextStyle(fontSize: 16.0),)
//                       );
//                     },
//                   );
//                 }).toList(),
//             ),
//               )
//             ],
//           ),
              ],),
                ],
              )
            ],
          )
        ],
      ),
    );
	
  }
}

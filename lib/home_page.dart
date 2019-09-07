import 'package:flutter/material.dart';
import 'package:login_pages/home_page2.dart';


class HomePage extends StatefulWidget {
  static String tag = 'Home-page';
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

    Widget build(BuildContext context) {


    final text = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 30.0,
        child:Text("Pengisian RMTH", style: TextStyle(color: Colors.green, fontWeight: FontWeight.w800, fontSize: 35.0),
      ),
    ),
    );
    
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final email1 = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final email2 = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final email3 = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final generateButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new HomePage2()
                )
              );
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightGreenAccent,
        child: Text('Generatee', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
          title: const Text('Pengisian RTMA', style: TextStyle(color: Colors.white)),
          automaticallyImplyLeading: false,
        ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(bottom: 40.0, left: 24.0, right: 24.0),
          children: <Widget>[
            text,
            SizedBox(height: 30.0),
            email,
            SizedBox(height: 15.0),
            email1,
            SizedBox(height: 15.0),
            email2,
            SizedBox(height: 15.0),
            email3,
            SizedBox(height: 15.0),
            password,
            SizedBox(height: 24.0),
            generateButton,
          ],
        ),
      ),
    );
  }
}
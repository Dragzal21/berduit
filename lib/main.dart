import 'package:flutter/material.dart';
import 'package:login_pages/login_page.dart';
import 'package:login_pages/register_page.dart';
import 'package:login_pages/setoran.dart';
import 'package:login_pages/simpanan.dart';
import './login_page.dart';
import './home_page.dart';
import './home_page2.dart';
import './register_page.dart';
import './setoran.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    RegisterPage.tag: (context) => RegisterPage(),
    HomePage.tag: (context) => HomePage(),
    HomePage2.tag: (context) => HomePage2(),
    SetoranPage.tag: (context) => SetoranPage(),
    SimpananPage.tag: (context) => SimpananPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Login-Register',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}

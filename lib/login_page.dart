import 'package:flutter/material.dart';
import 'package:login_pages/home_page2.dart';
import 'package:login_pages/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth firebaseauth = FirebaseAuth.instance;
  
  String _email, _password;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final email = TextFormField(
      
      onSaved:(input) => _email = input, 
      keyboardType: TextInputType.emailAddress,
      validator:(value) => value.isEmpty ? 'Please Enter Your Email': null,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      onSaved:(input) => _password = input,
      validator:(value) => value.isEmpty ? 'Please Enter Your Password': null,
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: signIn,
        padding: EdgeInsets.all(12),
        color: Colors.lightGreenAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final registerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new RegisterPage()
                )
              );
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightGreenAccent,
        child: Text('Register', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      appBar : AppBar(
        title : Text('Sign In'),
      ),
      // backgroundColor: Colors.white,
      body: Form(
        key : _formkey,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            registerButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
  Future<void> signIn() async{
  final formState = _formkey.currentState;
  if(formState.validate()){
    formState.save();
    try{
      FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password)) as FirebaseUser; 
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage2(user:user)));
      return 'test';

    }catch(e){
      print(e.message);       
    }
    
  } 
}
}


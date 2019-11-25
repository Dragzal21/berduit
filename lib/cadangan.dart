import 'package:flutter/material.dart';




class AbsenPage extends StatefulWidget {
  static String tag = 'Absen-page';
  @override
  _AbsenPageState createState() => new _AbsenPageState();
}

class _AbsenPageState extends State<AbsenPage> {
  String _radioValue1; //Initial definition of radio button value
  String choice;

  Map<String, bool> values = {
    'bayu': true,
    'bayes': false,
  };

  void radioButtonChanges(String value) {
    setState(() {
      _radioValue1 = value;
      switch (value) {
        case 'one':
          choice = value;
          break;
        case 'two':
          choice = value;
          break;
        case 'three':
          choice = value;
          break;
        default:
          choice = null;
      }
      debugPrint(choice); //Debug the choice in console
    });
  }

  @override

    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Absen"),
      ),
    
    body: new Container(
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                      new SizedBox(width: 20.0,),  
                      new Text(
                      'bayu :',
                      style: new TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    new SizedBox(width: 150.0,),
                        new Radio(
                          value: '0',
                          groupValue: _radioValue1,
                          onChanged: radioButtonChanges,
                        ),
                        new Text(
                          'hadir',
                          style: new TextStyle(fontSize: 16.0),
                        ),
                        new Radio(
                          value: '1',
                          groupValue: _radioValue1,
                          onChanged: radioButtonChanges,
                        ),
                        new Text(
                          'Tidak',
                          style: new TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),  
                    new SizedBox(height: 10,)
                  ],
              ),
    ),
    );
  }
}




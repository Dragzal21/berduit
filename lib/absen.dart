import 'package:flutter/material.dart';


class AbsenPage extends StatefulWidget {
  static String tag = 'Absen-page';
  @override
  _AbsenPageState createState() => new _AbsenPageState();
}

class _AbsenPageState extends State<AbsenPage> {
  Map<String, bool> values = {
    'semprul': false,
    'abul': false,
    'tante': false,
    'om ganteng': false,
  };
  @override

    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Absen"),
      ),
      body: ListView(
        children: values.keys.map((String key) {
          return new CheckboxListTile(
            title: new Text(key),
            value: values[key],
            onChanged: (bool value) {
              setState(() {
                values[key] = value;
              });
            },
          );

        }).toList(),
      ),     
    );
  }
}


//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
import 'dart:async';

Future main() async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
    host: 'host',
    port: 3306,
    user: 'user',
    db: 'db',
  ));

  products = await conn.query('select * from products');
     
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MySQL sampling',
      darkTheme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

Widget getTextWidgets(List<String> strings, index) {
  String temp = jsonEncode(products.toString());
  List<String> preferenceChoices = temp.split("Fields");
  
  return Column(children: strings.map((item) => new Text(item)).toList().sublist(index++)); 
}

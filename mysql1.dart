
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

  runApp(MyApp(conn));
}

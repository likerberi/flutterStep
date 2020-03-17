import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mysql1/mysql1.dart';

var products;
Future main() async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
    host: 'HOST',
    port: 3306,
    user: 'WE',
    password: 'ARE',
    db: 'which SQL is best?',
  ));

  products = await conn.query('select * from products');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  final List wonders = [
    Place(
      imagePath: "https://source.unsplash.com/collection/1163637/300x300",
      near: "서울대입구",
      fareType: "monthly",
      price: "45_5",
      floor: "2",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid Sample',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid Sample'),
        ),
        body: GridView.builder(
          itemCount: 7,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
          itemBuilder: (context, index) {
            return Card(
              child: Column(children: <Widget>[
                Container(child: Image.network(wonders[index].imagePath, fit: BoxFit.cover,), height: 150),
                Text(wonders[index].near),
                Text(wonders[index].fareType),
                Text(wonders[index].price),
                Text(wonders[index].floor),
              ],),
            );
          }
        )
      ),
    );

  } 
}

class Place {
    String imagePath;
    String near;
    String price;
    String fareType;
    String floor;
    //
    Place({
        this.imagePath,
        this.near,
        this.price,
        this.fareType,
        this.floor,    
    });
}
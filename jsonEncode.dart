import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mysql1/mysql1.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()

var products;

Future main() async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
    host: 'HOST',
    port: 3306,
    user: 'USER',
    password: 'PWD',
    db: 'DB',
  ));
  products = new Map();
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

  String temp = jsonEncode(products.toString());
  // temp.split("Fields");
  // temp.length.toString() :: 1938
  //var indexing = temp.indexOf('F');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid Sample',
      home: ListView.separated( 
        separatorBuilder: (BuildContext context, int index) => const Divider(), 
        itemCount: products.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.white,
            child: Center(child: Text(temp[0]))
          );
        }
      )
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

  // Place.fromJson(Map<String, dynamic> json)
  //   : near = json['near'],
  //     price = json['price'];

  // Map<String, dynamic> toJson() => {
  //   'near': near,
  //   'price': price,
  // };
  // Map placeMap = jsonDecode(products.toString());
  // temp = Place.fromJson(placeMap);
  //Map<String, dynamic> user = jsonDecode(products.toString());
  //print('sample', ${user['id']});
}
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

// extends Table?
class Wine {
// 이름 / 국적 / 종류 / 도수 / 품종 / 생산연도 / 가격 / 갯수 / 용량 / 수입일자 / 수입자 등 ㅋ
  late String _name;
  late String _nation;
  late String _bSeries; // bottle
  late String _gSeries; // grape
  late String _byWhom;
  late String _opString;

  late int _id;

  late int _pYear;
  late int _price;
  late int _number;
  late int _amount;
  late int _degree;
  late int _opInt;

  Wine(
      this._id,
      this._amount,
      this._bSeries,
      this._byWhom,
      this._degree,
      this._gSeries,
      this._name,
      this._nation,
      this._number,
      this._opInt,
      this._opString,
      this._pYear,
      this._price);

  Wine.map(dynamic obj) {
    this._id = obj['id'];
    this._amount = obj['amount'];
    this._bSeries = obj['bSeries'];
    this._byWhom = obj['byWhom'];
    this._degree = obj['degree'];
    this._gSeries = obj['gSeries'];
    this._name = obj['name'];
    this._nation = obj['nation'];
    this._number = obj['number'];
    this._opInt = obj['opInt'];
    this._opString = obj['opString'];
    this._pYear = obj['pYear'];
    this._price = obj['price'];
  }

  String get name => _name;
  String get nation => _nation;
  String get bSeries => _bSeries; // bottle
  String get gSeries => _gSeries; // grape
  String get byWhom => _byWhom;
  String get opString => _opString;

  int get id => _id;

  int get pYear => _pYear;
  int get price => _price;
  int get number => _number;
  int get amount => _amount;
  int get degree => _degree;
  int get opInt => _opInt;

  Wine.fromSnapshot(DataSnapshot snapshot) {
    String _name;
    String _nation;
    String _bSeries; // bottle
    String _gSeries; // grape
    String _byWhom;
    String _opString;

    int _id;

    int _pYear;
    int _price;
    int _number;
    int _amount;
    int _degree;
    int _opInt;
  }
}

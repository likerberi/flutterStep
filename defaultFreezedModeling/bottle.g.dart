// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bottle _$_$_BottleFromJson(Map<String, dynamic> json) {
  return _$_Bottle(
    name: json['name'] as String,
    nation: json['nation'] as String,
    category: json['category'] as String,
    iYear: json['iYear'] as String,
    seed: json['seed'] as String,
    id: json['id'] as int,
    alcohol: json['alcohol'] as int,
    price: json['price'] as int,
    numbers: json['numbers'] as int,
    weight: json['weight'] as int,
  );
}

Map<String, dynamic> _$_$_BottleToJson(_$_Bottle instance) => <String, dynamic>{
      'name': instance.name,
      'nation': instance.nation,
      'category': instance.category,
      'iYear': instance.iYear,
      'seed': instance.seed,
      'id': instance.id,
      'alcohol': instance.alcohol,
      'price': instance.price,
      'numbers': instance.numbers,
      'weight': instance.weight,
    };

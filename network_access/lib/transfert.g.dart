// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberResponse _$NumberResponseFromJson(Map<String, dynamic> json) =>
    NumberResponse()
      ..nombre = json['nombre'] as int
      ..descritpion = json['descritpion'] as String
      ..representation = json['representation'] as String;

Map<String, dynamic> _$NumberResponseToJson(NumberResponse instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'descritpion': instance.descritpion,
      'representation': instance.representation,
    };

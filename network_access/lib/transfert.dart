import 'package:json_annotation/json_annotation.dart';


//À mettre manuellement avant de faire la commande
//flutter pub run build_runner build
part 'transfert.g.dart';

@JsonSerializable()
class NumberResponse
{
  NumberResponse();

  int nombre = 0;
  String descritpion = '';
  String representation = '';

  factory NumberResponse.fromJson(Map<String, dynamic> json) => _$NumberResponseFromJson(json);
  Map<String, dynamic> toJson() => _$NumberResponseToJson(this);
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ad _$$_AdFromJson(Map json) => _$_Ad(
      urlImages: (json['urlImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      kitchenFloorArea: json['kitchenFloorArea'] as String,
      street: json['street'] as String,
      totalFloorArea: json['totalFloorArea'] as String,
      cost: json['cost'] as String,
      commissionToAgent: json['commissionToAgent'] as String,
      description: json['description'] as String,
      apartmentComplex: json['apartmentComplex'] as String,
      assignment: json['assignment'] as String,
      numberOfRooms: json['numberOfRooms'] as String,
      apartmentLayout: json['apartmentLayout'] as String,
      condition: json['condition'] as String,
      terrace: json['terrace'] as String,
      typeOfHeating: json['typeOfHeating'] as String,
      calculationOptions: json['calculationOptions'] as String,
      communicationMethod: json['communicationMethod'] as String,
    );

Map<String, dynamic> _$$_AdToJson(_$_Ad instance) => <String, dynamic>{
      'urlImages': instance.urlImages,
      'kitchenFloorArea': instance.kitchenFloorArea,
      'street': instance.street,
      'totalFloorArea': instance.totalFloorArea,
      'cost': instance.cost,
      'commissionToAgent': instance.commissionToAgent,
      'description': instance.description,
      'apartmentComplex': instance.apartmentComplex,
      'assignment': instance.assignment,
      'numberOfRooms': instance.numberOfRooms,
      'apartmentLayout': instance.apartmentLayout,
      'condition': instance.condition,
      'terrace': instance.terrace,
      'typeOfHeating': instance.typeOfHeating,
      'calculationOptions': instance.calculationOptions,
      'communicationMethod': instance.communicationMethod,
    };

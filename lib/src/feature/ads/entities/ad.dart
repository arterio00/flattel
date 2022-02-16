import 'package:freezed_annotation/freezed_annotation.dart';
part 'ad.freezed.dart';
part 'ad.g.dart';

@freezed
class Ad with _$Ad {
  const factory Ad({
    required List<String>? urlImages,
    required String kitchenFloorArea,
    required String street,
    required String totalFloorArea,
    required String cost,
    required String commissionToAgent,
    required String description,
    required String apartmentComplex,
    required String assignment,
    required String numberOfRooms,
    required String apartmentLayout,
    required String condition,
    required String terrace,
    required String typeOfHeating,
    required String calculationOptions,
    required String communicationMethod,
  }) = _Ad;
  factory Ad.fromJson(Map<String, dynamic> json) => _$AdFromJson(json);
}

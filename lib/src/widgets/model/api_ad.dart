import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_ad.freezed.dart';
part 'api_ad.g.dart';

@freezed
class ApiAd with _$ApiAd {
  const factory ApiAd({
    required dynamic images,
    required dynamic kitchenFloorArea,
    required dynamic street,
    required dynamic totalFloorArea,
    required dynamic cost,
  }) = _ApiAd;
  factory ApiAd.fromJson(Map<String, dynamic> json) => _$ApiAdFromJson(json);
}

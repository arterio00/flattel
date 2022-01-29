import 'package:freezed_annotation/freezed_annotation.dart';
part 'ad.freezed.dart';

@freezed
class Ad with _$Ad {
  const factory Ad({
    required String? images,
    required String? kitchenFloorArea,
    required String? street,
    required String? totalFloorArea,
    required String? cost,
  }) = _Ad;
}

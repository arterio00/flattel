import '../ad.dart';
import '/data/model/api_ad.dart';

abstract class AdMapper {
  static ApiAd toApiAd(Ad ad) {
    return ApiAd(
      images: ad.images,
      kitchenFloorArea: ad.kitchenFloorArea,
      street: ad.street,
      totalFloorArea: ad.totalFloorArea,
      cost: ad.cost,
    );
  }

  static Ad toAd(ApiAd ad) {
    return Ad(
      images: ad.images,
      kitchenFloorArea: ad.kitchenFloorArea,
      street: ad.street,
      totalFloorArea: ad.totalFloorArea,
      cost: ad.cost,
    );
  }
}

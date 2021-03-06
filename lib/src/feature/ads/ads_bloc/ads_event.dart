part of 'ads_bloc.dart';

@freezed
class AdsEvent with _$AdsEvent {
  const factory AdsEvent.getAds(List<Ad>? ads) = _GetAds;
  const factory AdsEvent.sendAd(
    Ad ad,
    List<File> images,
  ) = _SendAd;
  const factory AdsEvent.setMap() = _SetMap;
}

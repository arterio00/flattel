part of 'ads_bloc.dart';

@freezed
class AdsState with _$AdsState {
  const factory AdsState.loading() = _Loading;
  const factory AdsState.loaded(List<Ad> ad) = _Loaded;
}

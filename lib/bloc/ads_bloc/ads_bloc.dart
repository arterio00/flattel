import 'package:bloc/bloc.dart';
import 'package:flattel/bloc/app_bloc/app_bloc.dart';
import 'package:flattel/bloc/entities/ad.dart';
import 'package:flattel/bloc/entities/mapper/ad_mapper.dart';
import 'package:flattel/data/repository/firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ads_event.dart';
part 'ads_state.dart';
part 'ads_bloc.freezed.dart';

class AdsBloc extends Bloc<AdsEvent, AdsState> {
  AdsBloc(this._appBloc, this._firestore) : super(const _Loading()) {
    on<_GetAds>(_fetchAds);
    _firestore
        .fetchAds()
        .map((ads) => ads.map((ad) => AdMapper.toAd(ad)).toList())
        .listen((ads) {
      print(ads);
      add(AdsEvent.getAds(ads));
    });
  }
  final AppBloc _appBloc;

  final FireStore _firestore;

  void _fetchAds(_GetAds event, Emitter<AdsState> emit) {
    emit(event.ads == null
        ? const AdsState.loading()
        : AdsState.loaded(event.ads!));
  }
}

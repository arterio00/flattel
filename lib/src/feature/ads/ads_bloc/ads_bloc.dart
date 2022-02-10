import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../authenticate/auth_bloc/auth_bloc.dart';
import '../entities/ad.dart';
import '../logic/firestore.dart';

part 'ads_event.dart';
part 'ads_state.dart';
part 'ads_bloc.freezed.dart';

class AdsBloc extends Bloc<AdsEvent, AdsState> {
  AdsBloc(this._authBloc, this._firestore) : super(const _Loading()) {
    on<_GetAds>(_fetchAds);
    _firestore.fetchAds().listen((ads) {
      print(ads);
      add(AdsEvent.getAds(ads));
    });
  }
  final AuthBloc _authBloc;

  final FireStore _firestore;

  void _fetchAds(_GetAds event, Emitter<AdsState> emit) {
    emit(event.ads == null
        ? const AdsState.loading()
        : AdsState.loaded(event.ads!));
  }
}

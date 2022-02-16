// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdsEventTearOff {
  const _$AdsEventTearOff();

  _GetAds getAds(List<Ad>? ads) {
    return _GetAds(
      ads,
    );
  }

  _SendAd sendAd(Ad ad, List<File> images) {
    return _SendAd(
      ad,
      images,
    );
  }

  _SetMap setMap() {
    return const _SetMap();
  }
}

/// @nodoc
const $AdsEvent = _$AdsEventTearOff();

/// @nodoc
mixin _$AdsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ad>? ads) getAds,
    required TResult Function(Ad ad, List<File> images) sendAd,
    required TResult Function() setMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Ad>? ads)? getAds,
    TResult Function(Ad ad, List<File> images)? sendAd,
    TResult Function()? setMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad>? ads)? getAds,
    TResult Function(Ad ad, List<File> images)? sendAd,
    TResult Function()? setMap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAds value) getAds,
    required TResult Function(_SendAd value) sendAd,
    required TResult Function(_SetMap value) setMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAds value)? getAds,
    TResult Function(_SendAd value)? sendAd,
    TResult Function(_SetMap value)? setMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAds value)? getAds,
    TResult Function(_SendAd value)? sendAd,
    TResult Function(_SetMap value)? setMap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsEventCopyWith<$Res> {
  factory $AdsEventCopyWith(AdsEvent value, $Res Function(AdsEvent) then) =
      _$AdsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdsEventCopyWithImpl<$Res> implements $AdsEventCopyWith<$Res> {
  _$AdsEventCopyWithImpl(this._value, this._then);

  final AdsEvent _value;
  // ignore: unused_field
  final $Res Function(AdsEvent) _then;
}

/// @nodoc
abstract class _$GetAdsCopyWith<$Res> {
  factory _$GetAdsCopyWith(_GetAds value, $Res Function(_GetAds) then) =
      __$GetAdsCopyWithImpl<$Res>;
  $Res call({List<Ad>? ads});
}

/// @nodoc
class __$GetAdsCopyWithImpl<$Res> extends _$AdsEventCopyWithImpl<$Res>
    implements _$GetAdsCopyWith<$Res> {
  __$GetAdsCopyWithImpl(_GetAds _value, $Res Function(_GetAds) _then)
      : super(_value, (v) => _then(v as _GetAds));

  @override
  _GetAds get _value => super._value as _GetAds;

  @override
  $Res call({
    Object? ads = freezed,
  }) {
    return _then(_GetAds(
      ads == freezed
          ? _value.ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<Ad>?,
    ));
  }
}

/// @nodoc

class _$_GetAds implements _GetAds {
  const _$_GetAds(this.ads);

  @override
  final List<Ad>? ads;

  @override
  String toString() {
    return 'AdsEvent.getAds(ads: $ads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAds &&
            const DeepCollectionEquality().equals(other.ads, ads));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ads));

  @JsonKey(ignore: true)
  @override
  _$GetAdsCopyWith<_GetAds> get copyWith =>
      __$GetAdsCopyWithImpl<_GetAds>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ad>? ads) getAds,
    required TResult Function(Ad ad, List<File> images) sendAd,
    required TResult Function() setMap,
  }) {
    return getAds(ads);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Ad>? ads)? getAds,
    TResult Function(Ad ad, List<File> images)? sendAd,
    TResult Function()? setMap,
  }) {
    return getAds?.call(ads);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad>? ads)? getAds,
    TResult Function(Ad ad, List<File> images)? sendAd,
    TResult Function()? setMap,
    required TResult orElse(),
  }) {
    if (getAds != null) {
      return getAds(ads);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAds value) getAds,
    required TResult Function(_SendAd value) sendAd,
    required TResult Function(_SetMap value) setMap,
  }) {
    return getAds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAds value)? getAds,
    TResult Function(_SendAd value)? sendAd,
    TResult Function(_SetMap value)? setMap,
  }) {
    return getAds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAds value)? getAds,
    TResult Function(_SendAd value)? sendAd,
    TResult Function(_SetMap value)? setMap,
    required TResult orElse(),
  }) {
    if (getAds != null) {
      return getAds(this);
    }
    return orElse();
  }
}

abstract class _GetAds implements AdsEvent {
  const factory _GetAds(List<Ad>? ads) = _$_GetAds;

  List<Ad>? get ads;
  @JsonKey(ignore: true)
  _$GetAdsCopyWith<_GetAds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendAdCopyWith<$Res> {
  factory _$SendAdCopyWith(_SendAd value, $Res Function(_SendAd) then) =
      __$SendAdCopyWithImpl<$Res>;
  $Res call({Ad ad, List<File> images});

  $AdCopyWith<$Res> get ad;
}

/// @nodoc
class __$SendAdCopyWithImpl<$Res> extends _$AdsEventCopyWithImpl<$Res>
    implements _$SendAdCopyWith<$Res> {
  __$SendAdCopyWithImpl(_SendAd _value, $Res Function(_SendAd) _then)
      : super(_value, (v) => _then(v as _SendAd));

  @override
  _SendAd get _value => super._value as _SendAd;

  @override
  $Res call({
    Object? ad = freezed,
    Object? images = freezed,
  }) {
    return _then(_SendAd(
      ad == freezed
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as Ad,
      images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }

  @override
  $AdCopyWith<$Res> get ad {
    return $AdCopyWith<$Res>(_value.ad, (value) {
      return _then(_value.copyWith(ad: value));
    });
  }
}

/// @nodoc

class _$_SendAd implements _SendAd {
  const _$_SendAd(this.ad, this.images);

  @override
  final Ad ad;
  @override
  final List<File> images;

  @override
  String toString() {
    return 'AdsEvent.sendAd(ad: $ad, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendAd &&
            const DeepCollectionEquality().equals(other.ad, ad) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ad),
      const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  _$SendAdCopyWith<_SendAd> get copyWith =>
      __$SendAdCopyWithImpl<_SendAd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ad>? ads) getAds,
    required TResult Function(Ad ad, List<File> images) sendAd,
    required TResult Function() setMap,
  }) {
    return sendAd(ad, images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Ad>? ads)? getAds,
    TResult Function(Ad ad, List<File> images)? sendAd,
    TResult Function()? setMap,
  }) {
    return sendAd?.call(ad, images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad>? ads)? getAds,
    TResult Function(Ad ad, List<File> images)? sendAd,
    TResult Function()? setMap,
    required TResult orElse(),
  }) {
    if (sendAd != null) {
      return sendAd(ad, images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAds value) getAds,
    required TResult Function(_SendAd value) sendAd,
    required TResult Function(_SetMap value) setMap,
  }) {
    return sendAd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAds value)? getAds,
    TResult Function(_SendAd value)? sendAd,
    TResult Function(_SetMap value)? setMap,
  }) {
    return sendAd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAds value)? getAds,
    TResult Function(_SendAd value)? sendAd,
    TResult Function(_SetMap value)? setMap,
    required TResult orElse(),
  }) {
    if (sendAd != null) {
      return sendAd(this);
    }
    return orElse();
  }
}

abstract class _SendAd implements AdsEvent {
  const factory _SendAd(Ad ad, List<File> images) = _$_SendAd;

  Ad get ad;
  List<File> get images;
  @JsonKey(ignore: true)
  _$SendAdCopyWith<_SendAd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetMapCopyWith<$Res> {
  factory _$SetMapCopyWith(_SetMap value, $Res Function(_SetMap) then) =
      __$SetMapCopyWithImpl<$Res>;
}

/// @nodoc
class __$SetMapCopyWithImpl<$Res> extends _$AdsEventCopyWithImpl<$Res>
    implements _$SetMapCopyWith<$Res> {
  __$SetMapCopyWithImpl(_SetMap _value, $Res Function(_SetMap) _then)
      : super(_value, (v) => _then(v as _SetMap));

  @override
  _SetMap get _value => super._value as _SetMap;
}

/// @nodoc

class _$_SetMap implements _SetMap {
  const _$_SetMap();

  @override
  String toString() {
    return 'AdsEvent.setMap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SetMap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ad>? ads) getAds,
    required TResult Function(Ad ad, List<File> images) sendAd,
    required TResult Function() setMap,
  }) {
    return setMap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Ad>? ads)? getAds,
    TResult Function(Ad ad, List<File> images)? sendAd,
    TResult Function()? setMap,
  }) {
    return setMap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ad>? ads)? getAds,
    TResult Function(Ad ad, List<File> images)? sendAd,
    TResult Function()? setMap,
    required TResult orElse(),
  }) {
    if (setMap != null) {
      return setMap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAds value) getAds,
    required TResult Function(_SendAd value) sendAd,
    required TResult Function(_SetMap value) setMap,
  }) {
    return setMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAds value)? getAds,
    TResult Function(_SendAd value)? sendAd,
    TResult Function(_SetMap value)? setMap,
  }) {
    return setMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAds value)? getAds,
    TResult Function(_SendAd value)? sendAd,
    TResult Function(_SetMap value)? setMap,
    required TResult orElse(),
  }) {
    if (setMap != null) {
      return setMap(this);
    }
    return orElse();
  }
}

abstract class _SetMap implements AdsEvent {
  const factory _SetMap() = _$_SetMap;
}

/// @nodoc
class _$AdsStateTearOff {
  const _$AdsStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(List<Ad> ad) {
    return _Loaded(
      ad,
    );
  }
}

/// @nodoc
const $AdsState = _$AdsStateTearOff();

/// @nodoc
mixin _$AdsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ad> ad) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> ad)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> ad)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsStateCopyWith<$Res> {
  factory $AdsStateCopyWith(AdsState value, $Res Function(AdsState) then) =
      _$AdsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdsStateCopyWithImpl<$Res> implements $AdsStateCopyWith<$Res> {
  _$AdsStateCopyWithImpl(this._value, this._then);

  final AdsState _value;
  // ignore: unused_field
  final $Res Function(AdsState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$AdsStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AdsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ad> ad) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> ad)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> ad)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AdsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Ad> ad});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$AdsStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? ad = freezed,
  }) {
    return _then(_Loaded(
      ad == freezed
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.ad);

  @override
  final List<Ad> ad;

  @override
  String toString() {
    return 'AdsState.loaded(ad: $ad)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.ad, ad));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ad));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ad> ad) loaded,
  }) {
    return loaded(ad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> ad)? loaded,
  }) {
    return loaded?.call(ad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> ad)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(ad);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AdsState {
  const factory _Loaded(List<Ad> ad) = _$_Loaded;

  List<Ad> get ad;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

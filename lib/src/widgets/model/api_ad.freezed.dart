// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_ad.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiAd _$ApiAdFromJson(Map<String, dynamic> json) {
  return _ApiAd.fromJson(json);
}

/// @nodoc
class _$ApiAdTearOff {
  const _$ApiAdTearOff();

  _ApiAd call(
      {required dynamic images,
      required dynamic kitchenFloorArea,
      required dynamic street,
      required dynamic totalFloorArea,
      required dynamic cost}) {
    return _ApiAd(
      images: images,
      kitchenFloorArea: kitchenFloorArea,
      street: street,
      totalFloorArea: totalFloorArea,
      cost: cost,
    );
  }

  ApiAd fromJson(Map<String, Object?> json) {
    return ApiAd.fromJson(json);
  }
}

/// @nodoc
const $ApiAd = _$ApiAdTearOff();

/// @nodoc
mixin _$ApiAd {
  dynamic get images => throw _privateConstructorUsedError;
  dynamic get kitchenFloorArea => throw _privateConstructorUsedError;
  dynamic get street => throw _privateConstructorUsedError;
  dynamic get totalFloorArea => throw _privateConstructorUsedError;
  dynamic get cost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiAdCopyWith<ApiAd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiAdCopyWith<$Res> {
  factory $ApiAdCopyWith(ApiAd value, $Res Function(ApiAd) then) =
      _$ApiAdCopyWithImpl<$Res>;
  $Res call(
      {dynamic images,
      dynamic kitchenFloorArea,
      dynamic street,
      dynamic totalFloorArea,
      dynamic cost});
}

/// @nodoc
class _$ApiAdCopyWithImpl<$Res> implements $ApiAdCopyWith<$Res> {
  _$ApiAdCopyWithImpl(this._value, this._then);

  final ApiAd _value;
  // ignore: unused_field
  final $Res Function(ApiAd) _then;

  @override
  $Res call({
    Object? images = freezed,
    Object? kitchenFloorArea = freezed,
    Object? street = freezed,
    Object? totalFloorArea = freezed,
    Object? cost = freezed,
  }) {
    return _then(_value.copyWith(
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kitchenFloorArea: kitchenFloorArea == freezed
          ? _value.kitchenFloorArea
          : kitchenFloorArea // ignore: cast_nullable_to_non_nullable
              as dynamic,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalFloorArea: totalFloorArea == freezed
          ? _value.totalFloorArea
          : totalFloorArea // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$ApiAdCopyWith<$Res> implements $ApiAdCopyWith<$Res> {
  factory _$ApiAdCopyWith(_ApiAd value, $Res Function(_ApiAd) then) =
      __$ApiAdCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic images,
      dynamic kitchenFloorArea,
      dynamic street,
      dynamic totalFloorArea,
      dynamic cost});
}

/// @nodoc
class __$ApiAdCopyWithImpl<$Res> extends _$ApiAdCopyWithImpl<$Res>
    implements _$ApiAdCopyWith<$Res> {
  __$ApiAdCopyWithImpl(_ApiAd _value, $Res Function(_ApiAd) _then)
      : super(_value, (v) => _then(v as _ApiAd));

  @override
  _ApiAd get _value => super._value as _ApiAd;

  @override
  $Res call({
    Object? images = freezed,
    Object? kitchenFloorArea = freezed,
    Object? street = freezed,
    Object? totalFloorArea = freezed,
    Object? cost = freezed,
  }) {
    return _then(_ApiAd(
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kitchenFloorArea: kitchenFloorArea == freezed
          ? _value.kitchenFloorArea
          : kitchenFloorArea // ignore: cast_nullable_to_non_nullable
              as dynamic,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalFloorArea: totalFloorArea == freezed
          ? _value.totalFloorArea
          : totalFloorArea // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiAd implements _ApiAd {
  const _$_ApiAd(
      {required this.images,
      required this.kitchenFloorArea,
      required this.street,
      required this.totalFloorArea,
      required this.cost});

  factory _$_ApiAd.fromJson(Map<String, dynamic> json) =>
      _$$_ApiAdFromJson(json);

  @override
  final dynamic images;
  @override
  final dynamic kitchenFloorArea;
  @override
  final dynamic street;
  @override
  final dynamic totalFloorArea;
  @override
  final dynamic cost;

  @override
  String toString() {
    return 'ApiAd(images: $images, kitchenFloorArea: $kitchenFloorArea, street: $street, totalFloorArea: $totalFloorArea, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiAd &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality()
                .equals(other.kitchenFloorArea, kitchenFloorArea) &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality()
                .equals(other.totalFloorArea, totalFloorArea) &&
            const DeepCollectionEquality().equals(other.cost, cost));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(images),
      const DeepCollectionEquality().hash(kitchenFloorArea),
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(totalFloorArea),
      const DeepCollectionEquality().hash(cost));

  @JsonKey(ignore: true)
  @override
  _$ApiAdCopyWith<_ApiAd> get copyWith =>
      __$ApiAdCopyWithImpl<_ApiAd>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiAdToJson(this);
  }
}

abstract class _ApiAd implements ApiAd {
  const factory _ApiAd(
      {required dynamic images,
      required dynamic kitchenFloorArea,
      required dynamic street,
      required dynamic totalFloorArea,
      required dynamic cost}) = _$_ApiAd;

  factory _ApiAd.fromJson(Map<String, dynamic> json) = _$_ApiAd.fromJson;

  @override
  dynamic get images;
  @override
  dynamic get kitchenFloorArea;
  @override
  dynamic get street;
  @override
  dynamic get totalFloorArea;
  @override
  dynamic get cost;
  @override
  @JsonKey(ignore: true)
  _$ApiAdCopyWith<_ApiAd> get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ad.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdTearOff {
  const _$AdTearOff();

  _Ad call(
      {required String? images,
      required String? kitchenFloorArea,
      required String? street,
      required String? totalFloorArea,
      required String? cost}) {
    return _Ad(
      images: images,
      kitchenFloorArea: kitchenFloorArea,
      street: street,
      totalFloorArea: totalFloorArea,
      cost: cost,
    );
  }
}

/// @nodoc
const $Ad = _$AdTearOff();

/// @nodoc
mixin _$Ad {
  String? get images => throw _privateConstructorUsedError;
  String? get kitchenFloorArea => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get totalFloorArea => throw _privateConstructorUsedError;
  String? get cost => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdCopyWith<Ad> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdCopyWith<$Res> {
  factory $AdCopyWith(Ad value, $Res Function(Ad) then) =
      _$AdCopyWithImpl<$Res>;
  $Res call(
      {String? images,
      String? kitchenFloorArea,
      String? street,
      String? totalFloorArea,
      String? cost});
}

/// @nodoc
class _$AdCopyWithImpl<$Res> implements $AdCopyWith<$Res> {
  _$AdCopyWithImpl(this._value, this._then);

  final Ad _value;
  // ignore: unused_field
  final $Res Function(Ad) _then;

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
              as String?,
      kitchenFloorArea: kitchenFloorArea == freezed
          ? _value.kitchenFloorArea
          : kitchenFloorArea // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFloorArea: totalFloorArea == freezed
          ? _value.totalFloorArea
          : totalFloorArea // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AdCopyWith<$Res> implements $AdCopyWith<$Res> {
  factory _$AdCopyWith(_Ad value, $Res Function(_Ad) then) =
      __$AdCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? images,
      String? kitchenFloorArea,
      String? street,
      String? totalFloorArea,
      String? cost});
}

/// @nodoc
class __$AdCopyWithImpl<$Res> extends _$AdCopyWithImpl<$Res>
    implements _$AdCopyWith<$Res> {
  __$AdCopyWithImpl(_Ad _value, $Res Function(_Ad) _then)
      : super(_value, (v) => _then(v as _Ad));

  @override
  _Ad get _value => super._value as _Ad;

  @override
  $Res call({
    Object? images = freezed,
    Object? kitchenFloorArea = freezed,
    Object? street = freezed,
    Object? totalFloorArea = freezed,
    Object? cost = freezed,
  }) {
    return _then(_Ad(
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      kitchenFloorArea: kitchenFloorArea == freezed
          ? _value.kitchenFloorArea
          : kitchenFloorArea // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFloorArea: totalFloorArea == freezed
          ? _value.totalFloorArea
          : totalFloorArea // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Ad implements _Ad {
  const _$_Ad(
      {required this.images,
      required this.kitchenFloorArea,
      required this.street,
      required this.totalFloorArea,
      required this.cost});

  @override
  final String? images;
  @override
  final String? kitchenFloorArea;
  @override
  final String? street;
  @override
  final String? totalFloorArea;
  @override
  final String? cost;

  @override
  String toString() {
    return 'Ad(images: $images, kitchenFloorArea: $kitchenFloorArea, street: $street, totalFloorArea: $totalFloorArea, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ad &&
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
  _$AdCopyWith<_Ad> get copyWith => __$AdCopyWithImpl<_Ad>(this, _$identity);
}

abstract class _Ad implements Ad {
  const factory _Ad(
      {required String? images,
      required String? kitchenFloorArea,
      required String? street,
      required String? totalFloorArea,
      required String? cost}) = _$_Ad;

  @override
  String? get images;
  @override
  String? get kitchenFloorArea;
  @override
  String? get street;
  @override
  String? get totalFloorArea;
  @override
  String? get cost;
  @override
  @JsonKey(ignore: true)
  _$AdCopyWith<_Ad> get copyWith => throw _privateConstructorUsedError;
}

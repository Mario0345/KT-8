// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JWT _$JWTFromJson(Map<String, dynamic> json) {
  return _JWT.fromJson(json);
}

/// @nodoc
mixin _$JWT {
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JWTCopyWith<JWT> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JWTCopyWith<$Res> {
  factory $JWTCopyWith(JWT value, $Res Function(JWT) then) =
      _$JWTCopyWithImpl<$Res, JWT>;
  @useResult
  $Res call({String? accessToken, String? refreshToken});
}

/// @nodoc
class _$JWTCopyWithImpl<$Res, $Val extends JWT> implements $JWTCopyWith<$Res> {
  _$JWTCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JWTImplCopyWith<$Res> implements $JWTCopyWith<$Res> {
  factory _$$JWTImplCopyWith(_$JWTImpl value, $Res Function(_$JWTImpl) then) =
      __$$JWTImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? accessToken, String? refreshToken});
}

/// @nodoc
class __$$JWTImplCopyWithImpl<$Res> extends _$JWTCopyWithImpl<$Res, _$JWTImpl>
    implements _$$JWTImplCopyWith<$Res> {
  __$$JWTImplCopyWithImpl(_$JWTImpl _value, $Res Function(_$JWTImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$JWTImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JWTImpl implements _JWT {
  _$JWTImpl({this.accessToken, this.refreshToken});

  factory _$JWTImpl.fromJson(Map<String, dynamic> json) =>
      _$$JWTImplFromJson(json);

  @override
  final String? accessToken;
  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'JWT(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JWTImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JWTImplCopyWith<_$JWTImpl> get copyWith =>
      __$$JWTImplCopyWithImpl<_$JWTImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JWTImplToJson(
      this,
    );
  }
}

abstract class _JWT implements JWT {
  factory _JWT({final String? accessToken, final String? refreshToken}) =
      _$JWTImpl;

  factory _JWT.fromJson(Map<String, dynamic> json) = _$JWTImpl.fromJson;

  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$JWTImplCopyWith<_$JWTImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

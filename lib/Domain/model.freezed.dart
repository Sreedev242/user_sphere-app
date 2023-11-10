// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Modelclass _$ModelclassFromJson(Map<String, dynamic> json) {
  return _Modelclass.fromJson(json);
}

/// @nodoc
mixin _$Modelclass {
  List<Result> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelclassCopyWith<Modelclass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelclassCopyWith<$Res> {
  factory $ModelclassCopyWith(
          Modelclass value, $Res Function(Modelclass) then) =
      _$ModelclassCopyWithImpl<$Res, Modelclass>;
  @useResult
  $Res call({List<Result> result});
}

/// @nodoc
class _$ModelclassCopyWithImpl<$Res, $Val extends Modelclass>
    implements $ModelclassCopyWith<$Res> {
  _$ModelclassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelclassImplCopyWith<$Res>
    implements $ModelclassCopyWith<$Res> {
  factory _$$ModelclassImplCopyWith(
          _$ModelclassImpl value, $Res Function(_$ModelclassImpl) then) =
      __$$ModelclassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Result> result});
}

/// @nodoc
class __$$ModelclassImplCopyWithImpl<$Res>
    extends _$ModelclassCopyWithImpl<$Res, _$ModelclassImpl>
    implements _$$ModelclassImplCopyWith<$Res> {
  __$$ModelclassImplCopyWithImpl(
      _$ModelclassImpl _value, $Res Function(_$ModelclassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$ModelclassImpl(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelclassImpl implements _Modelclass {
  const _$ModelclassImpl({required final List<Result> result})
      : _result = result;

  factory _$ModelclassImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelclassImplFromJson(json);

  final List<Result> _result;
  @override
  List<Result> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'Modelclass(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelclassImpl &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelclassImplCopyWith<_$ModelclassImpl> get copyWith =>
      __$$ModelclassImplCopyWithImpl<_$ModelclassImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelclassImplToJson(
      this,
    );
  }
}

abstract class _Modelclass implements Modelclass {
  const factory _Modelclass({required final List<Result> result}) =
      _$ModelclassImpl;

  factory _Modelclass.fromJson(Map<String, dynamic> json) =
      _$ModelclassImpl.fromJson;

  @override
  List<Result> get result;
  @override
  @JsonKey(ignore: true)
  _$$ModelclassImplCopyWith<_$ModelclassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: 'userId')
  int get UserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get Id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') int UserId,
      @JsonKey(name: 'id') int Id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? UserId = null,
    Object? Id = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      UserId: null == UserId
          ? _value.UserId
          : UserId // ignore: cast_nullable_to_non_nullable
              as int,
      Id: null == Id
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') int UserId,
      @JsonKey(name: 'id') int Id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? UserId = null,
    Object? Id = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$ResultImpl(
      UserId: null == UserId
          ? _value.UserId
          : UserId // ignore: cast_nullable_to_non_nullable
              as int,
      Id: null == Id
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {@JsonKey(name: 'userId') required this.UserId,
      @JsonKey(name: 'id') required this.Id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'body') required this.body});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final int UserId;
  @override
  @JsonKey(name: 'id')
  final int Id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'body')
  final String body;

  @override
  String toString() {
    return 'Result(UserId: $UserId, Id: $Id, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.UserId, UserId) || other.UserId == UserId) &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, UserId, Id, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {@JsonKey(name: 'userId') required final int UserId,
      @JsonKey(name: 'id') required final int Id,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'body') required final String body}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  @JsonKey(name: 'userId')
  int get UserId;
  @override
  @JsonKey(name: 'id')
  int get Id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'body')
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

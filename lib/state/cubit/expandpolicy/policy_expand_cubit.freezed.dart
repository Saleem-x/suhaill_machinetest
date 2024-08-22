// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'policy_expand_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PolicyExpandState {
  List<bool> get expandedList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<bool> expandedList)
        expandPolicyContainersState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<bool> expandedList)? expandPolicyContainersState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<bool> expandedList)? expandPolicyContainersState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpandPolicyContainersState value)
        expandPolicyContainersState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpandPolicyContainersState value)?
        expandPolicyContainersState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpandPolicyContainersState value)?
        expandPolicyContainersState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PolicyExpandStateCopyWith<PolicyExpandState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyExpandStateCopyWith<$Res> {
  factory $PolicyExpandStateCopyWith(
          PolicyExpandState value, $Res Function(PolicyExpandState) then) =
      _$PolicyExpandStateCopyWithImpl<$Res, PolicyExpandState>;
  @useResult
  $Res call({List<bool> expandedList});
}

/// @nodoc
class _$PolicyExpandStateCopyWithImpl<$Res, $Val extends PolicyExpandState>
    implements $PolicyExpandStateCopyWith<$Res> {
  _$PolicyExpandStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expandedList = null,
  }) {
    return _then(_value.copyWith(
      expandedList: null == expandedList
          ? _value.expandedList
          : expandedList // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpandPolicyContainersStateImplCopyWith<$Res>
    implements $PolicyExpandStateCopyWith<$Res> {
  factory _$$ExpandPolicyContainersStateImplCopyWith(
          _$ExpandPolicyContainersStateImpl value,
          $Res Function(_$ExpandPolicyContainersStateImpl) then) =
      __$$ExpandPolicyContainersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<bool> expandedList});
}

/// @nodoc
class __$$ExpandPolicyContainersStateImplCopyWithImpl<$Res>
    extends _$PolicyExpandStateCopyWithImpl<$Res,
        _$ExpandPolicyContainersStateImpl>
    implements _$$ExpandPolicyContainersStateImplCopyWith<$Res> {
  __$$ExpandPolicyContainersStateImplCopyWithImpl(
      _$ExpandPolicyContainersStateImpl _value,
      $Res Function(_$ExpandPolicyContainersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expandedList = null,
  }) {
    return _then(_$ExpandPolicyContainersStateImpl(
      expandedList: null == expandedList
          ? _value._expandedList
          : expandedList // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc

class _$ExpandPolicyContainersStateImpl implements ExpandPolicyContainersState {
  const _$ExpandPolicyContainersStateImpl(
      {required final List<bool> expandedList})
      : _expandedList = expandedList;

  final List<bool> _expandedList;
  @override
  List<bool> get expandedList {
    if (_expandedList is EqualUnmodifiableListView) return _expandedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expandedList);
  }

  @override
  String toString() {
    return 'PolicyExpandState.expandPolicyContainersState(expandedList: $expandedList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpandPolicyContainersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._expandedList, _expandedList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_expandedList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpandPolicyContainersStateImplCopyWith<_$ExpandPolicyContainersStateImpl>
      get copyWith => __$$ExpandPolicyContainersStateImplCopyWithImpl<
          _$ExpandPolicyContainersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<bool> expandedList)
        expandPolicyContainersState,
  }) {
    return expandPolicyContainersState(expandedList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<bool> expandedList)? expandPolicyContainersState,
  }) {
    return expandPolicyContainersState?.call(expandedList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<bool> expandedList)? expandPolicyContainersState,
    required TResult orElse(),
  }) {
    if (expandPolicyContainersState != null) {
      return expandPolicyContainersState(expandedList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpandPolicyContainersState value)
        expandPolicyContainersState,
  }) {
    return expandPolicyContainersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpandPolicyContainersState value)?
        expandPolicyContainersState,
  }) {
    return expandPolicyContainersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpandPolicyContainersState value)?
        expandPolicyContainersState,
    required TResult orElse(),
  }) {
    if (expandPolicyContainersState != null) {
      return expandPolicyContainersState(this);
    }
    return orElse();
  }
}

abstract class ExpandPolicyContainersState implements PolicyExpandState {
  const factory ExpandPolicyContainersState(
          {required final List<bool> expandedList}) =
      _$ExpandPolicyContainersStateImpl;

  @override
  List<bool> get expandedList;
  @override
  @JsonKey(ignore: true)
  _$$ExpandPolicyContainersStateImplCopyWith<_$ExpandPolicyContainersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

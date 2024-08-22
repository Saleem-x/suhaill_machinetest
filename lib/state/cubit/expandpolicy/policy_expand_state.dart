part of 'policy_expand_cubit.dart';

@freezed
class PolicyExpandState with _$PolicyExpandState {
  const factory PolicyExpandState.expandPolicyContainersState(
      {required List<bool> expandedList}) = ExpandPolicyContainersState;

  factory PolicyExpandState.initial() =>
      const PolicyExpandState.expandPolicyContainersState(
          expandedList: [false, false, false, false, false]);
}

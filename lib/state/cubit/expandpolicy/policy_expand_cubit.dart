import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'policy_expand_state.dart';
part 'policy_expand_cubit.freezed.dart';

class PolicyExpandCubit extends Cubit<PolicyExpandState> {
  PolicyExpandCubit() : super(PolicyExpandState.initial());

  void expandTile(int length, int idx, bool isAlreadyExpanded) {
    List<bool> expandedlist = List.generate(length, (index) => false);

    if (idx >= 0) {
      if (isAlreadyExpanded) {
        expandedlist[idx] = false;
      } else {
        expandedlist[idx] = true;
      }
    }
    emit(ExpandPolicyContainersState(expandedList: expandedlist));
  }
}

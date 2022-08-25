import 'package:flutter_riverpod/flutter_riverpod.dart';


final checkGenderProvider = Provider.family.autoDispose<bool, List<bool>?>(
      (ref, initialState) {
    final genderState = ref.watch(genderStateProvider(initialState));
    for (bool check in genderState) {
      if (check) return true;
    }
    return false;
  },
);

final checkAgeProvider = Provider.family.autoDispose<bool, List<bool>?>(
      (ref, initialState) {
    final ageState = ref.watch(ageStateProvider(initialState));
    for (bool check in ageState) {
      if (check) return true;
    }
    return false;
  },
);



final genderStateProvider =
    StateNotifierProvider.family.autoDispose<GenderState, List<bool>, List<bool>?>(
  (ref, initialState) => GenderState(initialState: initialState),
);

final ageStateProvider =
    StateNotifierProvider.family.autoDispose<AgeState, List<bool>, List<bool>?>(
  (ref, initialState) => AgeState(initialState: initialState),
);

class AgeState extends StateNotifier<List<bool>> {
  AgeState({
    List<bool>? initialState,
  }) : super(initialState ?? List.generate(6, (index) => false));


  void toggleAge(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index) state[index] = true else false
    ];
  }
  getCheckIndex() => state.indexWhere((element) =>  element == true) + 1;
}

class GenderState extends StateNotifier<List<bool>> {
  GenderState({
    List<bool>? initialState,
  }) : super(initialState ?? List.generate(2, (index) => false));


  void toggleGender(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index) state[index] = true else false
    ];
  }


   getCheckIndex() => state.indexWhere((element) => element == true) + 1;
}

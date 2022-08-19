import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:science_hall/presentation/signup/signup_provider.dart';
import 'package:science_hall/presentation/widget/action_button.dart';
import 'package:science_hall/presentation/widget/age_box_item.dart';

class AgeListCard extends ConsumerWidget {
  const AgeListCard({Key? key, required this.initialState}) : super(key: key);

  final List<bool>? initialState;

  static List<String> ageTitle = ["10대", "20대", "30s대", "40대", "50대", "60대 이상"];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ageState = ref.watch(ageStateProvider(initialState));
    return Wrap(
      children: [
        for (int i = 0; i < ageState.length; i++)
          AgeBoxItem(
            index: i,
            title: ageTitle[i],
            isCheck: ageState[i],
            onTab: ref.read(ageStateProvider(initialState).notifier).toggleAge,
          )
      ],
    );
  }
}

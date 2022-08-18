import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:science_hall/presentation/widget/action_button.dart';
import 'package:science_hall/presentation/widget/age_box_item.dart';

class AgeListCard extends ConsumerWidget {
  const AgeListCard({Key? key, this.initialState}) : super(key: key);


  final List<bool>? initialState;

  static List<String> ageTitle= ["10대","20대","30대","40대","50대","60대 이상"];

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Wrap(
      children: [
        for (int i = 0; i < 6; i++)
          AgeBoxItem(title: ageTitle[i], isCheck: true, onTab: () {

          })

      ],
    );
  }
}

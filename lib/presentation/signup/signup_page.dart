import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:science_hall/di_container.dart';
import 'package:science_hall/presentation/signup/signup_provider.dart';

import 'package:science_hall/presentation/theme/app_theme.dart';
import 'package:science_hall/presentation/widget/action_button.dart';
import 'package:science_hall/presentation/widget/age_list_card.dart';
import 'package:science_hall/presentation/widget/gender_card.dart';
import 'package:science_hall/util/dev_log.dart';


class SignupPage extends ConsumerWidget {
  const SignupPage({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<bool>? initialGenderState;
    List<bool>? initialAgeState;
    final theme = ref.watch(appThemeProvider);
    final ageState = ref.watch(genderStateProvider(initialGenderState));
    final isGenderValid = ref.watch(checkGenderProvider(initialGenderState));
    final isAgeVaild = ref.watch(checkAgeProvider(initialAgeState));
    final beaconManager = ref.watch(beaconProvider);

    beaconManager.state.listen((event) {
      Log.d(":::::::::::비콘 정보.. " + event.toString());
    });
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: context.router.pop,
          child: const Icon(CupertinoIcons.back, color: Colors.black),
        ),
        backgroundColor: theme.appColors.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(20),
            Text('귀하의 성별을\n알려주세요!', style: theme.textTheme.h50),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GenderCard(
                    isCheck: ageState[0],
                    gender: Gender.MAN,
                    onTap: ref.read(genderStateProvider(initialGenderState).notifier).toggleGender),
                GenderCard(
                    isCheck: ageState[1],
                    gender: Gender.WOMAN,
                    onTap: ref.read(genderStateProvider(initialGenderState).notifier).toggleGender),
              ],
            ),
            const Gap(30),
            Text('귀하의 나이를\n알려주세요!', style: theme.textTheme.h50),
            const Gap(20),
            AgeListCard(initialState: initialAgeState),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: ActionButton(
                buttonTitle: "관람하기",
                isEnable: isGenderValid && isAgeVaild,
                onPressed: () => {
                  beaconManager.check()
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

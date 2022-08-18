import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:science_hall/presentation/theme/app_text_theme.dart';
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
    final theme = ref.watch(appThemeProvider);
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
            Text('귀하의 성별을\n알려주세요!', style: theme.textTheme.h40.bold()),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GenderCard(
                    isCheck: true,
                    gender: Gender.MAN,
                    onTap: () {
                      Log.d("젠더 클릭...");
                    }),
                GenderCard(
                    isCheck: false,
                    gender: Gender.WOMAN,
                    onTap: () {
                      Log.d("젠더 클릭...");
                    }),
              ],
            ),
            const Gap(30),
            Text('귀하의 나이를\n알려주세요!', style: theme.textTheme.h40.bold()),
            const Gap(20),
            const AgeListCard(),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: ActionButton(
                buttonTitle: "관람하기",
                isEnable: true,
                onPressed: () => {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

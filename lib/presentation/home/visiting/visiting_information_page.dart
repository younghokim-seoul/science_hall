import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:science_hall/gen/assets.gen.dart';
import 'package:science_hall/presentation/theme/app_text_theme.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';

class VisitingInformationPage extends ConsumerWidget {
  const VisitingInformationPage({Key? key}) : super(key: key);

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
        centerTitle: true,
        title: Text('관람안내', style: theme.textTheme.h40.bold()),
        backgroundColor: theme.appColors.background,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 16, right: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(10),
              Assets.images.infoTop.image(fit: BoxFit.fill),
              const Gap(30),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 60.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Assets.images.infoIcon01.image(),
                    const Gap(16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Text("개관시간", style: theme.textTheme.h30)),
                        Expanded(
                            child: Text("09:30 ~ 17:30(입장마감:17:00)",
                                style: theme.textTheme.h30)),
                      ],
                    )
                  ],
                ),
              ),
              const Gap(10),
              const Divider(
                thickness: 1,
                color: Color(0xfff0f0f0),
              ),
              const Gap(10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 60.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Assets.images.infoIcon02.image(),
                    const Gap(16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Text("개관일", style: theme.textTheme.h30)),
                        Expanded(
                            child: Text("월,화,수,목,금,토,일",
                                style: theme.textTheme.h30)),
                      ],
                    )
                  ],
                ),
              ),
              const Gap(10),
              const Divider(
                thickness: 1,
                color: Color(0xfff0f0f0),
              ),
              const Gap(10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 90,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Assets.images.infoIcon03.image(),
                    const Gap(16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child: Text("휴관일", style: theme.textTheme.h30)),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: '-매주 월요일\n', style: theme.textTheme.h30),
                          TextSpan(
                              text: '-설날/추석연휴\n', style: theme.textTheme.h30),
                          TextSpan(
                              text: '(월요일이 공휴일인 경우 정상개관)',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold))
                        ]))
                      ],
                    )
                  ],
                ),
              ),
              const Gap(10),
              const Divider(
                thickness: 1,
                color: Color(0xfff0f0f0),
              ),
              const Gap(50),
            ],
          ),
        ),
      ),
    );
  }
}

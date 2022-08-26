import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:science_hall/di_container.dart';
import 'package:science_hall/presentation/signup/signup_page.dart';
import 'package:science_hall/presentation/theme/app_text_theme.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';
import 'package:science_hall/util/dev_log.dart';

class PreViewPage extends ConsumerStatefulWidget {
  const PreViewPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PreViewPageState();
}

class _PreViewPageState extends ConsumerState<PreViewPage> {



  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('관람', style: theme.textTheme.h40.bold()),
          backgroundColor: theme.appColors.background,
        ),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Gap(10.h),
                  Text('앱을 켜시고 전시관에 입장하시면\n자동으로 정보가 나옵니다',style: theme.textTheme.h50,textAlign: TextAlign.center,)
                ],
              ),
          ),
        ));
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:science_hall/presentation/theme/app_text_theme.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';
import 'package:science_hall/route/app_route.dart';

class ExhibitionInformationPage extends ConsumerWidget {
  const ExhibitionInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    return AutoTabsRouter.tabBar(
        physics: const NeverScrollableScrollPhysics(),
        routes: const [
          TabFirstFloorRoute(),
          TabSecondFloorRoute(),
          TabUndergroundFloorRoute(),
        ],
        builder: (context, child, controller) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: InkWell(
                onTap: context.router.pop,
                child: const Icon(CupertinoIcons.back, color: Colors.black),
              ),
              centerTitle: true,
              title: Text('전시관 안내', style: theme.textTheme.h40.bold()),
              backgroundColor: theme.appColors.background,
              bottom: TabBar(controller : controller, tabs: [
                Tab(child: Text("1층" ,style: TextStyle(color: controller.index == 0 ? theme.appColors.accent : theme.appColors.disabled))),
                Tab(child: Text("2층" ,style: TextStyle(color: controller.index == 1 ? theme.appColors.accent : theme.appColors.disabled))),
                Tab(child: Text("지하 1층" ,style: TextStyle(color: controller.index == 2 ? theme.appColors.accent : theme.appColors.disabled))),
              ]),
            ),
            body: child,
          );
        });
  }
}

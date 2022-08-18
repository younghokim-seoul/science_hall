import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:science_hall/domain/entity/show_room_entity.dart';
import 'package:science_hall/gen/assets.gen.dart';
import 'package:science_hall/presentation/theme/app_text_theme.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';

class DetailExhibitionPage extends ConsumerWidget {
  const DetailExhibitionPage({Key? key, required this.showRoomEntity})
      : super(key: key);

  final ShowRoomEntity showRoomEntity;

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
        title: Text(showRoomEntity.topic, style: theme.textTheme.h40.bold()),
        backgroundColor: theme.appColors.background,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Gap(10),
            SizedBox(height: 300.h, child: Image.asset(showRoomEntity.img, fit: BoxFit.cover)),
            const Gap(20),
            Text(showRoomEntity.contents,style: theme.textTheme.h30,)
          ],
        ),
      ),
    );
  }
}

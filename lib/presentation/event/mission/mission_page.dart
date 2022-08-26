import 'package:arc/arc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gap/gap.dart';
import 'package:science_hall/domain/entity/event_entity.dart';
import 'package:science_hall/gen/assets.gen.dart';
import 'package:science_hall/presentation/event/mission/mission_provider.dart';
import 'package:science_hall/presentation/theme/app_text_theme.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';
import 'package:science_hall/util/dev_log.dart';

class MissionPage extends ConsumerWidget {
  const MissionPage({
    Key? key,
    required this.eventEntity,
  }) : super(key: key);

  final EventEntity eventEntity;

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
          title: Text("미션 이벤트", style: theme.textTheme.h40.bold()),
          backgroundColor: theme.appColors.background,
        ),
        body: Column(
          children: [
            _getMainTop(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                  color: Color(0xfff8f8f8),
                ),
                child: _MissionArchiveCard(eventEntity: eventEntity),
              ),
            ),
          ],
        ));
  }

  Widget _getMainTop() {
    return SizedBox(
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                  bottom: 180, left: 20, right: 20, top: 20),
              child: RichText(
                  text: const TextSpan(
                children: [
                  TextSpan(
                      text: '앱을 켜신 후 아래의 전시관을\n',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w300)),
                  TextSpan(
                      text: '관람하시면 ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w300)),
                  TextSpan(
                    text: "선물을 드려요.",
                    style: TextStyle(
                        color: Color(0xff0F6FCC),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              )),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Assets.images.missionIcon.image(fit: BoxFit.scaleDown),
          )
        ],
      ),
    );
  }
}

class _MissionArchiveCard extends ConsumerWidget {
  const _MissionArchiveCard({
    Key? key,
    required this.eventEntity,
  }) : super(key: key);

  final EventEntity eventEntity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final footPrintResult = ref.watch(footPrintProvider);
    return footPrintResult.when(
      error: (error, stackTrace) => Container(),
      loading: () => Container(),
      data: (items) {
        if (items.isNullOrEmpty) return Container();
        return Padding(
          padding: const EdgeInsets.all(20),
          child: AnimationLimiter(
            child: GridView.count(
              childAspectRatio: 1 / 1.2,
              padding: const EdgeInsets.all(8.0),
              crossAxisCount: 3,
              children: List.generate(
                eventEntity.inner_exhibition.length,
                (int index) {
                  return AnimationConfiguration.staggeredGrid(
                    columnCount: 3,
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    child: ScaleAnimation(
                      scale: 0.5,
                      child: FadeInAnimation(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 70.h,
                              height: 70.h,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: _isMissionClear(
                                            items!.result,
                                            eventEntity
                                                .inner_exhibition[index]) ==
                                        true
                                    ? Assets.svgs.acquired.svg()
                                    : Assets.svgs.acquiredNo.svg(),
                              ),
                            ),
                            Gap(10.h),
                            Text(eventEntity.inner_exhibition[index].name,style: theme.textTheme.h20,)
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }

  bool _isMissionClear(
      List<int> userVisited, InnerExhibitionEntity missionEventList) {
    return userVisited
        .where((element) => element == missionEventList.pk)
        .isNotEmpty;
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:science_hall/presentation/home/exhibition/exhibition_provider.dart';
import 'package:science_hall/presentation/widget/error_card.dart';
import 'package:science_hall/presentation/widget/exhibition_card.dart';
import 'package:science_hall/util/dev_log.dart';

import '../../../../route/app_route.dart';

class TabSecondFloorPage extends ConsumerWidget {
  const TabSecondFloorPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reponse = ref.watch(exhibitionProvider("second"));
    return SafeArea(
        child: reponse.when(
            error: (error, stackTrace) => const ErrorCard(),
            loading: () => Container(),
            data: (items) {
              return AnimationLimiter(
                child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const Divider(height: 1, thickness: 1),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 375),
                        child: SlideAnimation(
                            verticalOffset: 44.0,
                            child: ExhibitionCard(
                                onTap: () => context.router.push(
                                    DetailExhibitionRoute(
                                        showRoomEntity: items[index])),
                                showRoomEntity: items[index])),
                      );
                    }),
              );
            }));
  }
}

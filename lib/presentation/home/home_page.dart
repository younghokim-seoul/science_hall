import 'package:arc/arc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beacon/flutter_beacon.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:science_hall/data/datasource/local/permission_provider.dart';
import 'package:science_hall/data/datasource/local/save_beacon_provider.dart';
import 'package:science_hall/data/datasource/local/save_user_provider.dart';
import 'package:science_hall/di_container.dart';
import 'package:science_hall/gen/assets.gen.dart';
import 'package:science_hall/presentation/widget/action_button.dart';
import 'package:science_hall/presentation/widget/quick_item.dart';
import 'package:science_hall/route/app_route.dart';
import 'package:science_hall/util/dev_log.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final beaconManager = ref.watch(beaconProvider);

    beaconManager.state.listen((event) async {
      Log.d(":::::::::::비콘 정보.. " + event.toString());
      String latestUUID = await getBeaconUUID();
      var ranging = event as RangingResult;

      if (ranging.beacons.isNotEmpty) {
        if (latestUUID != ranging.region.proximityUUID) {
          if (!ranging.region.proximityUUID.isNullOrEmpty) {
            await saveBeaconUUID(ranging.region.proximityUUID!);
          }
        }
      }

      Log.d(":::::::::::비콘 정보.. " + event.region.proximityUUID.toString());
    });

    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _header,
            _quickMenu(context),
            ActionButton(
              buttonTitle: "관람시작",
              isEnable: true,
              onPressed: () async {
                var userInfo = await getUserInfo();
                if (userInfo.isNullOrEmpty) {
                  context.router.push(const SignupRoute());
                } else {
                  final checkPermission =
                      await ref.read(beaconPermissionProvider.future);
                  if (checkPermission) {
                    beaconManager.check();
                  }
                }
              },
            ),
            const Gap(10)
          ],
        ),
      ),
    );
  }
}

Widget _header = SizedBox(
  height: 280.h,
  child: Stack(
    children: [
      Positioned.fill(
          child: SizedBox(
        height: 300.h,
        child: Assets.images.mainTop.image(fit: BoxFit.cover),
      )),
      Positioned(
        top: 0,
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          child: Assets.images.mainLogo.image(),
        ),
      )
    ],
  ),
);

Widget _quickMenu(BuildContext context) => ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        QuickItem(
            img: Assets.images.mainQuick01,
            title: "관람안내",
            onTab: () => context.router.push(const VisitingInformationRoute())),
        QuickItem(
            img: Assets.images.mainQuick02,
            title: "전시관 안내",
            onTab: () =>
                context.router.push(const ExhibitionInformationRoute())),
        QuickItem(
            img: Assets.images.mainQuick03,
            title: "오시는길",
            onTab: () =>
                context.router.push(const DirectionsInformationRoute())),
      ],
    );

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:science_hall/gen/assets.gen.dart';
import 'package:science_hall/presentation/theme/app_text_theme.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';
import 'package:science_hall/presentation/widget/border_item.dart';

class DirectionsInformationPage extends ConsumerWidget {
  const DirectionsInformationPage({Key? key}) : super(key: key);

  static List<String> busRoute = ["일반버스 100,139,181", " 용궁사 국립수산과학원 하차"];
  static List<String> subWayRoute = [
    "오리시아역 하차",
    " 버스 139번 이용",
    " 용궁사 국립수산과학원 하차"
  ];
  static List<String> taxiRoute = ["블루라인(해운대<->용궁사) 이용", " 국립수산과학관 하차"];

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
        title: Text('오시는길', style: theme.textTheme.h40.bold()),
        backgroundColor: theme.appColors.background,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 16, right: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(10),
              SizedBox(
                  width: double.infinity,
                  child: Assets.images.place.image(fit: BoxFit.cover)),
              const Gap(20),
              BorderBoxItem(
                  img: Assets.images.locationInfo01,
                  title: '(우)46083 부산광역시 기장군 기장읍\n기장해안로 216',
                  onTab: () {}),
              BorderBoxItem(
                  img: Assets.images.locationInfo02,
                  title: '051-720-3061~6',
                  onTab: () {}),
              const Divider(
                thickness: 10,
                color: Color(0xfff0f0f0),
              ),
              const Gap(10),
              Text(
                "대중 교통을 이용하시려면?",
                style: theme.textTheme.h40.bold(),
              ),
              const Gap(20),
              LocationInfoBox(
                  background: const Color(0xffFAF2E6),
                  titleColor: const Color(0xffEFA940),
                  title: "버스 이용시",
                  subtitle: busRoute,
                  arrow: Assets.images.locationLine01,
                  type: Assets.images.locationTrans01),
              const Gap(10),
              LocationInfoBox(
                  background: const Color(0xffE6F2E8),
                  titleColor: const Color(0xff73BA81),
                  title: "동해남부선이용시",
                  subtitle: subWayRoute,
                  arrow: Assets.images.locationLine02,
                  type: Assets.images.locationTrans02),
              const Gap(10),
              LocationInfoBox(
                  background: const Color(0xffEEE7FB),
                  titleColor: const Color(0xff8665C0),
                  title: "부산시티투어",
                  subtitle: taxiRoute,
                  arrow: Assets.images.locationLine03,
                  type: Assets.images.locationTrans03),
            ],
          ),
        ),
      ),
    );
  }
}

class LocationInfoBox extends StatelessWidget {
  const LocationInfoBox(
      {Key? key,
      required this.background,
      required this.titleColor,
      required this.title,
      required this.subtitle,
      required this.arrow,
      required this.type})
      : super(key: key);

  final Color background;
  final Color titleColor;
  final String title;
  final List<String> subtitle;
  final AssetGenImage arrow;
  final AssetGenImage type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: Stack(
        children: [
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: background,
            ),
          )),
          Positioned(
            top: 10,
            bottom: 10,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: titleColor)),
                const Gap(10),
                Expanded(
                  child: subtitle.length < 3
                      ? Text.rich(TextSpan(children: [
                          TextSpan(text: "${subtitle[0]}\n"),
                          WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: arrow.image()),
                          TextSpan(
                              text: " ${subtitle[1]}",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                        ]))
                      : Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: subtitle[0]),
                              WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: arrow.image()),
                              TextSpan(text: "${subtitle[1]}\n"),
                              WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: arrow.image()),
                              TextSpan(
                                  text: subtitle[2],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                )
              ],
            ),
          ),
          Positioned(
            top: 10,
            bottom: 10,
            right: 20,
            child: type.image(fit: BoxFit.cover),
          )
        ],
      ),
    );
  }
}

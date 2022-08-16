import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:science_hall/gen/assets.gen.dart';
import 'package:science_hall/presentation/home/quick_item.dart';
import 'package:science_hall/route/app_route.dart';
import 'package:science_hall/util/dev_log.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Log.i("_HomePageState build");
    return Scaffold(
      body: Column(
        children: [
          _header,
          _quickMenu(context),
        ],
      ),
    );
  }
}

Widget _header = Container(
  color: Colors.black,
  height: 300.h,
  child: Stack(
    children: [
      Positioned.fill(child: Assets.images.mainTop.image(fit: BoxFit.fill)),
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

Widget _quickMenu(BuildContext context) => Expanded(
      child: Container(
        color: const Color(0xfff0f0f0),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            QuickItem(
                img: Assets.images.mainQuick01,
                title: "관람안내",
                onTab: () =>
                    context.router.push(const VisitingInformationRoute())),
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
        ),
      ),
    );

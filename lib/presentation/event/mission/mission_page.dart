import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:science_hall/gen/assets.gen.dart';
import 'package:science_hall/presentation/theme/app_text_theme.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';

class MissionPage extends ConsumerWidget {
  const MissionPage({
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
                child: Container(),
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
              padding: const EdgeInsets.only(bottom: 180,left: 20,right: 20,top: 20),
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

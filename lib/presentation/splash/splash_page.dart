import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:science_hall/gen/assets.gen.dart';
import 'package:science_hall/route/app_route.dart';


class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {

  @override
  initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      context.router.pushAndPopUntil(const MainRoute(), predicate: (route) => false);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.indigo,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Assets.svgs.introWave.svg(fit: BoxFit.fill),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Assets.svgs.introBottom.svg(fit: BoxFit.scaleDown),
          ),
          Positioned(
            top: 30,
            right: 0,
            left: 0,
            child: Assets.images.introLogo.image(fit: BoxFit.scaleDown),
          ),
        ],
      ),
    );
  }
}

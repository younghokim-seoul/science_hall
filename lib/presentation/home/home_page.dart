import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:science_hall/gen/assets.gen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            _header,
          ],
        ),
      ),
    );
  }
}

Widget _header = SizedBox(
  height: 300.h,
  child: Stack(
    children: [
      // AspectRatio(
      //   aspectRatio: 2 / 5,
      //   child: Assets.images.mainTop.image(),
      // ),
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

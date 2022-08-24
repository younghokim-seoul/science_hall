import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:science_hall/gen/assets.gen.dart';
import 'package:science_hall/presentation/theme/app_text_theme.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';
import 'package:science_hall/util/dev_log.dart';

class LocationPage extends ConsumerStatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LocationPageState();
}

class _LocationPageState extends ConsumerState<LocationPage> {
  @override
  Widget build(BuildContext context) {
    Log.d(":::::::현재위치화면...");
    final theme = ref.watch(appThemeProvider);
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("현재위치", style: theme.textTheme.h40.bold()),
        backgroundColor: theme.appColors.background,
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child:
              // Stack(
              //   children: [
              //     Container(
              //       color: Colors.red,
              //       child: Assets.images.map.image(fit: BoxFit.fill),
              //     ),
              //     Positioned(
              //         top: 57.3206626,
              //         left: 46.3633729,
              //         child: Container(width: 20, height: 30, color: Colors.blueAccent)),
              //   ],
              // ),
              Column(
            children: [
              Expanded(child: LayoutBuilder(builder: (context, constraints) {
                Log.d("::::constraints.biggest.height " + constraints.biggest.height.toString());
                Log.d("::::constraints.biggest.width " + constraints.biggest.width.toString());
                return Stack(
                  children: [
                    Container(
                      color: Colors.purple,
                      child: Assets.images.map.image(fit: BoxFit.fill),
                    ),
                    Positioned(
                      top: constraints.biggest.height / 57.3206626,
                      left: constraints.biggest.width / 46.3633729 ,
                      child: Text('bird'),
                    ),
                  ],
                );
              }))
            ],
          )),
    );
  }
}

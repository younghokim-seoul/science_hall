import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:science_hall/data/datasource/beacon/beacon_manager.dart';
import 'package:science_hall/di_container.dart';
import 'package:science_hall/presentation/location/location_viewmodel.dart';
import 'package:science_hall/presentation/theme/app_text_theme.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';

import '../../util/dev_log.dart';

class LocationPage extends ConsumerStatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LocationPageState();
}

class _LocationPageState extends ConsumerState<LocationPage> {
  var beaconManger = it<BeaconManager>();
  var locationViewModel = it<LocationViewModel>();

  @override
  void initState() async{
    super.initState();
    await locationViewModel.fetchLatestPlace();
  }
  @override
  void dispose() {
    Log.i("LocationPage dispose");
    locationViewModel.disposeAll();
    super.dispose();
  }

  getRatio(String coordinate) => double.parse(coordinate) / 100;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final theme = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("현재위치", style: theme.textTheme.h40.bold()),
        backgroundColor: theme.appColors.background,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 20),
        child: Column(children: [
          Gap(30.h),
          // Expanded(
          //     child: Center(
          //   child: Stack(
          //     children: [
          //       CachedImageCard(
          //         imageUrl:
          //             "https://smartseas.kr${item.inner_exhibition.exhibition?.drawing_image ?? "unkwon"}",
          //         height: 250.h,
          //         width: double.infinity,
          //         fit: BoxFit.fitWidth,
          //       ),
          //       Positioned(
          //           top: 250.h * getRatio(item.inner_exhibition.y_coordinate),
          //           left: width * getRatio(item.inner_exhibition.x_coordinate),
          //           child: Container(
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(12),
          //               color: theme.appColors.signIn,
          //             ),
          //             width: 70.w,
          //             padding: const EdgeInsets.symmetric(vertical: 10),
          //             child: Row(
          //               children: [
          //                 const Gap(5),
          //                 Assets.images.location.image(),
          //                 const Gap(5),
          //                 const Expanded(
          //                     child: Text("현재위치",
          //                         style: TextStyle(
          //                             color: Colors.white, fontSize: 12))),
          //                 const Gap(5),
          //               ],
          //             ),
          //           )),
          //     ],
          //   ),
          // )),
          // Expanded(
          //   child: Center(
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           TextSpan(text: '현재 위치는\n', style: theme.textTheme.h50),
          //           TextSpan(
          //               text:
          //                   "${item.inner_exhibition.exhibition!.floor_ko} ${item.inner_exhibition.name}",
          //               style: const TextStyle(
          //                   color: Colors.blueAccent,
          //                   fontWeight: FontWeight.bold,
          //                   fontSize: 20)),
          //           TextSpan(text: '입니다', style: theme.textTheme.h50),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        ]),
      ),
    );
  }
}


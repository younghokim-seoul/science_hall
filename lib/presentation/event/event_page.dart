import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:science_hall/gen/assets.gen.dart';
import 'package:science_hall/presentation/theme/app_text_theme.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';

class EventPage extends ConsumerStatefulWidget {
  const EventPage({Key? key}) : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EventPageState();
}

class _EventPageState extends ConsumerState<EventPage> {
  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("이벤트", style: theme.textTheme.h40.bold()),
        backgroundColor: theme.appColors.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xff3982AB),
                        ),
                      )),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20,right: 20,bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("선물가져가세요!", style: TextStyle(color: Colors.white)),
                          Gap(10),
                          Text("국립수산과학관이 준비한\n미션이벤트!", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                          Gap(10),
                          Text("바로가기 >", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    child:  Assets.images.eventIcon.image(fit: BoxFit.scaleDown),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

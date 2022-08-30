import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:science_hall/domain/entity/event_entity.dart';
import 'package:science_hall/presentation/theme/app_text_theme.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';
import 'package:science_hall/presentation/widget/cached_image_card.dart';
import 'package:intl/intl.dart';

class EventDetailPage extends ConsumerWidget {
  EventDetailPage({
    Key? key,
    required this.eventEntity,
  }) : super(key: key);

  EventEntity eventEntity;

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
        title: Text('이벤트', style: theme.textTheme.h40.bold()),
        backgroundColor: theme.appColors.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedImageCard(
                  imageUrl: "https://smartseas.kr${eventEntity.image}",
                  height: 300.h,
                  fit: BoxFit.cover,
                  width: double.infinity),
              Gap(5.h),
              Text("이벤트 이름", style: theme.textTheme.h30.bold()),
              Gap(5.h),
              Text(eventEntity.name),
              Gap(10.h),
              Text("이벤트 기간", style: theme.textTheme.h30.bold()),
              Gap(5.h),
              Text("${_partDate(eventEntity.start_dt)} ~ ${_partDate(eventEntity.end_dt)}"),
              Gap(10.h),
              Text("상세설명", style: theme.textTheme.h30.bold()),
              Text(eventEntity.explanation ?? ""),
              Gap(10.h),
            ],
          ),
        ),
      ),
    );
  }
  
}

String _partDate(String data){
  DateTime createdDate = DateTime.parse(data);
  return DateFormat('yyyy-MM-dd').format(createdDate);
}

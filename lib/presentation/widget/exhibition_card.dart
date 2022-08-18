import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:science_hall/domain/entity/show_room_entity.dart';
import 'package:science_hall/presentation/theme/app_text_theme.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';

class ExhibitionCard extends ConsumerWidget {
  const ExhibitionCard({
    Key? key,
    required this.showRoomEntity,
    required this.onTap,
  }) : super(key: key);

  final ShowRoomEntity showRoomEntity;
  final Function onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            ShowRoomImage(imgPath: showRoomEntity.img),
            const Gap(16),
            Expanded(
                child: Text(showRoomEntity.topic,
                    style: theme.textTheme.h30.bold())),
          ],
        ),
      ),
    );
  }
}

class ShowRoomImage extends StatelessWidget {
  const ShowRoomImage({Key? key, required this.imgPath}) : super(key: key);

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        imgPath,
        fit: BoxFit.cover,
        height: 100.h,
        width: 100.h,
      ),
    );
  }
}

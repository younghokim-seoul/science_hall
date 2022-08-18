import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:science_hall/gen/assets.gen.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';

enum Gender { MAN, WOMAN }

class GenderCard extends ConsumerWidget {
  const GenderCard({
    Key? key,
    required this.isCheck,
    this.height = 100,
    this.width = 100,
    required this.gender,
    required this.onTap,
  }) : super(key: key);

  final Gender gender;
  final bool isCheck;
  final double height;
  final double width;
  final Function onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    return Column(
      children: [
        Container(
            width: height.h,
            height: height.h,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: theme.appColors.background,
              border: Border.all(color: theme.appColors.divider),
            ),
            child: InkWell(onTap: () => onTap(),
            child: gender == Gender.MAN
                ? Assets.images.genderMan.image(height: 150)
                : Assets.images.genderWoman.image(height: 150),)
          ),
        const Gap(10),
        Text(gender == Gender.MAN ? "남" : "여",
            style: TextStyle(
                color: isCheck
                    ? theme.appColors.accent
                    : theme.appColors.disabled))


      ],
    );
  }
}

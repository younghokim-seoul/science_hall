import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:science_hall/gen/assets.gen.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';

class AgeBoxItem extends ConsumerWidget {
  const AgeBoxItem({
    Key? key,
    required this.title,
    required this.isCheck,
    required this.onTab,
  }) : super(key: key);

  final Function onTab;
  final String title;
  final bool isCheck;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final double width = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: theme.appColors.background,
          border: Border.all(color: theme.appColors.divider),
        ),
        margin: const EdgeInsets.only(bottom: 10,left: 2),
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
        width: width /3.5,
        child: InkWell(
          onTap: () => onTab(),
          child: Center(
            child: Text(title, style: theme.textTheme.h30),
          ),
        ),
      );

  }
}

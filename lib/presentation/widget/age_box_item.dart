import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';

class AgeBoxItem extends ConsumerWidget {
  const AgeBoxItem({
    Key? key,
    required this.index,
    required this.title,
    required this.isCheck,
    required this.onTab,
  }) : super(key: key);

  final void Function(int index) onTab;
  final String title;
  final bool isCheck;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final double width = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isCheck ? theme.appColors.signIn : theme.appColors.background,
          border: Border.all(color: isCheck ? Colors.transparent : theme.appColors.divider),
        ),
        margin: const EdgeInsets.only(bottom: 10,left: 2),
      width: width / 3.5,
      child: InkWell(
          onTap: () => onTab(index),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
            child: Text(title, style: TextStyle(color: isCheck ? Colors.white : Colors.black) ),
          ),
        ),
      );

  }
}

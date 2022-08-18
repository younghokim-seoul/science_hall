import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:science_hall/presentation/theme/app_text_theme.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';


class ErrorCard extends ConsumerWidget {
  const ErrorCard({
    Key? key,
    this.errorMessage = "데이터를 불러오는데 실패했습니다!",
  }) : super(key: key);

  final String errorMessage;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    return Center(
      child: Text(
        errorMessage,
        style: theme.textTheme.h50.bold(),
      ),
    );
  }
}

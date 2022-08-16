import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:science_hall/presentation/theme/app_text_theme.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';

class ExhibitionInformationPage extends ConsumerWidget {
  const ExhibitionInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: context.router.pop,
          child: const Icon(CupertinoIcons.back, color: Colors.black),
        ),
        centerTitle: true,
        title: Text('전시관 안내', style: theme.textTheme.h40.bold()),
        backgroundColor: theme.appColors.background,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 16, right: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
import 'package:arc/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:science_hall/presentation/home/home_page.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';

import 'di_container.dart' as dc;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dc.init();
  runApp(const ProviderScope(child: App()));
}

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final themeMode = ref.watch(appThemeModeProvider);
    return MaterialApp(
      navigatorKey: Arc().navigatorKey,
      theme: theme.data,
      darkTheme: AppTheme.light().data,
      themeMode: themeMode,
      home: const HomePage(),
    );
  }
}

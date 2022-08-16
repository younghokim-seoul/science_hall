
import 'package:auto_route/auto_route.dart';
import 'package:science_hall/presentation/event/event_page.dart';
import 'package:science_hall/presentation/home/home_page.dart';
import 'package:science_hall/presentation/location/location_page.dart';
import 'package:science_hall/presentation/main/main_page.dart';
import 'package:science_hall/presentation/preview/preview_page.dart';
export 'app_route.gr.dart';

@CupertinoAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MainPage,
      initial: true,
      children: <AutoRoute>[
        AutoRoute(
          path: 'home',
          page: HomePage,
        ),
        AutoRoute(
          path: 'location',
          page: LocationPage,
        ),
        AutoRoute(
          path: 'preview',
          page: PreViewPage,
        ),
        AutoRoute(
          path: 'event',
          page: EventPage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}

import 'package:auto_route/auto_route.dart';
import 'package:science_hall/presentation/event/event_page.dart';
import 'package:science_hall/presentation/home/directions/directions_information_page.dart';
import 'package:science_hall/presentation/home/exhibition/detail/detail_exhibition_page.dart';
import 'package:science_hall/presentation/home/exhibition/exhibition_information_page.dart';
import 'package:science_hall/presentation/home/exhibition/floor/tab_first_floor_page.dart';
import 'package:science_hall/presentation/home/exhibition/floor/tab_second_floor_page.dart';
import 'package:science_hall/presentation/home/exhibition/floor/tab_underground_floor_page.dart';
import 'package:science_hall/presentation/home/home_page.dart';
import 'package:science_hall/presentation/home/visiting/visiting_information_page.dart';
import 'package:science_hall/presentation/location/location_page.dart';
import 'package:science_hall/presentation/main/main_page.dart';
import 'package:science_hall/presentation/preview/preview_page.dart';
import 'package:science_hall/presentation/signup/signup_page.dart';
export 'app_route.gr.dart';

@CupertinoAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
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
    AutoRoute(
      path: '/visiting_information',
      page: VisitingInformationPage,
    ),
    AutoRoute(
      path: '/directions_information',
      page: DirectionsInformationPage,
    ),
    AutoRoute(
      path: '/exhibition_information',
      page: ExhibitionInformationPage,
      children: <AutoRoute>[
        AutoRoute(
          path: 'tab_first',
          page: TabFirstFloorPage,
        ),
        AutoRoute(
          path: 'tab_second',
          page: TabSecondFloorPage,
        ),
        AutoRoute(
          path: 'tab_underground',
          page: TabUndergroundFloorPage,
        ),
      ],
    ),
    AutoRoute(
      path: '/detail_exhibition',
      page: DetailExhibitionPage,
    ),
    AutoRoute(
      path: '/signup',
      page: SignupPage,
    ),
  ],
)
class $AppRouter {}

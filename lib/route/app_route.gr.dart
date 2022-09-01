// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/cupertino.dart' as _i19;
import 'package:flutter/material.dart' as _i18;

import '../domain/entity/event_entity.dart' as _i21;
import '../domain/entity/show_room_entity.dart' as _i20;
import '../presentation/event/detail/event_detail_page.dart' as _i9;
import '../presentation/event/event_page.dart' as _i13;
import '../presentation/event/mission/mission_page.dart' as _i8;
import '../presentation/home/directions/directions_information_page.dart'
    as _i4;
import '../presentation/home/exhibition/detail/detail_exhibition_page.dart'
    as _i6;
import '../presentation/home/exhibition/exhibition_information_page.dart'
    as _i5;
import '../presentation/home/exhibition/floor/tab_first_floor_page.dart'
    as _i14;
import '../presentation/home/exhibition/floor/tab_second_floor_page.dart'
    as _i15;
import '../presentation/home/exhibition/floor/tab_underground_floor_page.dart'
    as _i16;
import '../presentation/home/home_page.dart' as _i10;
import '../presentation/home/visiting/visiting_information_page.dart' as _i3;
import '../presentation/location/location_page.dart' as _i11;
import '../presentation/main/main_page.dart' as _i2;
import '../presentation/preview/preview_page.dart' as _i12;
import '../presentation/signup/signup_page.dart' as _i7;
import '../presentation/splash/splash_page.dart' as _i1;

class AppRouter extends _i17.RootStackRouter {
  AppRouter([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    MainRoute.name: (routeData) {
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.MainPage());
    },
    VisitingInformationRoute.name: (routeData) {
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.VisitingInformationPage());
    },
    DirectionsInformationRoute.name: (routeData) {
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.DirectionsInformationPage());
    },
    ExhibitionInformationRoute.name: (routeData) {
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.ExhibitionInformationPage());
    },
    DetailExhibitionRoute.name: (routeData) {
      final args = routeData.argsAs<DetailExhibitionRouteArgs>();
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i6.DetailExhibitionPage(
              key: args.key, showRoomEntity: args.showRoomEntity));
    },
    SignupRoute.name: (routeData) {
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.SignupPage());
    },
    MissionRoute.name: (routeData) {
      final args = routeData.argsAs<MissionRouteArgs>();
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i8.MissionPage(key: args.key, eventEntity: args.eventEntity));
    },
    EventDetailRoute.name: (routeData) {
      final args = routeData.argsAs<EventDetailRouteArgs>();
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i9.EventDetailPage(
              key: args.key, eventEntity: args.eventEntity));
    },
    HomeRoute.name: (routeData) {
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i10.HomePage());
    },
    LocationRoute.name: (routeData) {
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i11.LocationPage());
    },
    PreViewRoute.name: (routeData) {
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i12.PreViewPage());
    },
    EventRoute.name: (routeData) {
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i13.EventPage());
    },
    TabFirstFloorRoute.name: (routeData) {
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i14.TabFirstFloorPage());
    },
    TabSecondFloorRoute.name: (routeData) {
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i15.TabSecondFloorPage());
    },
    TabUndergroundFloorRoute.name: (routeData) {
      return _i17.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i16.TabUndergroundFloorPage());
    }
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i17.RouteConfig(SplashRoute.name, path: '/splash'),
        _i17.RouteConfig(MainRoute.name, path: '/main', children: [
          _i17.RouteConfig(HomeRoute.name,
              path: 'home', parent: MainRoute.name),
          _i17.RouteConfig(LocationRoute.name,
              path: 'location', parent: MainRoute.name),
          _i17.RouteConfig(PreViewRoute.name,
              path: 'preview', parent: MainRoute.name),
          _i17.RouteConfig(EventRoute.name,
              path: 'event', parent: MainRoute.name)
        ]),
        _i17.RouteConfig(VisitingInformationRoute.name,
            path: '/visiting_information'),
        _i17.RouteConfig(DirectionsInformationRoute.name,
            path: '/directions_information'),
        _i17.RouteConfig(ExhibitionInformationRoute.name,
            path: '/exhibition_information',
            children: [
              _i17.RouteConfig(TabFirstFloorRoute.name,
                  path: 'tab_first', parent: ExhibitionInformationRoute.name),
              _i17.RouteConfig(TabSecondFloorRoute.name,
                  path: 'tab_second', parent: ExhibitionInformationRoute.name),
              _i17.RouteConfig(TabUndergroundFloorRoute.name,
                  path: 'tab_underground',
                  parent: ExhibitionInformationRoute.name)
            ]),
        _i17.RouteConfig(DetailExhibitionRoute.name,
            path: '/detail_exhibition'),
        _i17.RouteConfig(SignupRoute.name, path: '/signup'),
        _i17.RouteConfig(MissionRoute.name, path: '/mission'),
        _i17.RouteConfig(EventDetailRoute.name, path: '/detail_event')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i17.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i17.PageRouteInfo<void> {
  const MainRoute({List<_i17.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/main', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i3.VisitingInformationPage]
class VisitingInformationRoute extends _i17.PageRouteInfo<void> {
  const VisitingInformationRoute()
      : super(VisitingInformationRoute.name, path: '/visiting_information');

  static const String name = 'VisitingInformationRoute';
}

/// generated route for
/// [_i4.DirectionsInformationPage]
class DirectionsInformationRoute extends _i17.PageRouteInfo<void> {
  const DirectionsInformationRoute()
      : super(DirectionsInformationRoute.name, path: '/directions_information');

  static const String name = 'DirectionsInformationRoute';
}

/// generated route for
/// [_i5.ExhibitionInformationPage]
class ExhibitionInformationRoute extends _i17.PageRouteInfo<void> {
  const ExhibitionInformationRoute({List<_i17.PageRouteInfo>? children})
      : super(ExhibitionInformationRoute.name,
            path: '/exhibition_information', initialChildren: children);

  static const String name = 'ExhibitionInformationRoute';
}

/// generated route for
/// [_i6.DetailExhibitionPage]
class DetailExhibitionRoute
    extends _i17.PageRouteInfo<DetailExhibitionRouteArgs> {
  DetailExhibitionRoute(
      {_i19.Key? key, required _i20.ShowRoomEntity showRoomEntity})
      : super(DetailExhibitionRoute.name,
            path: '/detail_exhibition',
            args: DetailExhibitionRouteArgs(
                key: key, showRoomEntity: showRoomEntity));

  static const String name = 'DetailExhibitionRoute';
}

class DetailExhibitionRouteArgs {
  const DetailExhibitionRouteArgs({this.key, required this.showRoomEntity});

  final _i19.Key? key;

  final _i20.ShowRoomEntity showRoomEntity;

  @override
  String toString() {
    return 'DetailExhibitionRouteArgs{key: $key, showRoomEntity: $showRoomEntity}';
  }
}

/// generated route for
/// [_i7.SignupPage]
class SignupRoute extends _i17.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i8.MissionPage]
class MissionRoute extends _i17.PageRouteInfo<MissionRouteArgs> {
  MissionRoute({_i19.Key? key, required _i21.EventEntity eventEntity})
      : super(MissionRoute.name,
            path: '/mission',
            args: MissionRouteArgs(key: key, eventEntity: eventEntity));

  static const String name = 'MissionRoute';
}

class MissionRouteArgs {
  const MissionRouteArgs({this.key, required this.eventEntity});

  final _i19.Key? key;

  final _i21.EventEntity eventEntity;

  @override
  String toString() {
    return 'MissionRouteArgs{key: $key, eventEntity: $eventEntity}';
  }
}

/// generated route for
/// [_i9.EventDetailPage]
class EventDetailRoute extends _i17.PageRouteInfo<EventDetailRouteArgs> {
  EventDetailRoute({_i19.Key? key, required _i21.EventEntity eventEntity})
      : super(EventDetailRoute.name,
            path: '/detail_event',
            args: EventDetailRouteArgs(key: key, eventEntity: eventEntity));

  static const String name = 'EventDetailRoute';
}

class EventDetailRouteArgs {
  const EventDetailRouteArgs({this.key, required this.eventEntity});

  final _i19.Key? key;

  final _i21.EventEntity eventEntity;

  @override
  String toString() {
    return 'EventDetailRouteArgs{key: $key, eventEntity: $eventEntity}';
  }
}

/// generated route for
/// [_i10.HomePage]
class HomeRoute extends _i17.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i11.LocationPage]
class LocationRoute extends _i17.PageRouteInfo<void> {
  const LocationRoute() : super(LocationRoute.name, path: 'location');

  static const String name = 'LocationRoute';
}

/// generated route for
/// [_i12.PreViewPage]
class PreViewRoute extends _i17.PageRouteInfo<void> {
  const PreViewRoute() : super(PreViewRoute.name, path: 'preview');

  static const String name = 'PreViewRoute';
}

/// generated route for
/// [_i13.EventPage]
class EventRoute extends _i17.PageRouteInfo<void> {
  const EventRoute() : super(EventRoute.name, path: 'event');

  static const String name = 'EventRoute';
}

/// generated route for
/// [_i14.TabFirstFloorPage]
class TabFirstFloorRoute extends _i17.PageRouteInfo<void> {
  const TabFirstFloorRoute()
      : super(TabFirstFloorRoute.name, path: 'tab_first');

  static const String name = 'TabFirstFloorRoute';
}

/// generated route for
/// [_i15.TabSecondFloorPage]
class TabSecondFloorRoute extends _i17.PageRouteInfo<void> {
  const TabSecondFloorRoute()
      : super(TabSecondFloorRoute.name, path: 'tab_second');

  static const String name = 'TabSecondFloorRoute';
}

/// generated route for
/// [_i16.TabUndergroundFloorPage]
class TabUndergroundFloorRoute extends _i17.PageRouteInfo<void> {
  const TabUndergroundFloorRoute()
      : super(TabUndergroundFloorRoute.name, path: 'tab_underground');

  static const String name = 'TabUndergroundFloorRoute';
}

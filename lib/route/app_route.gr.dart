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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../presentation/event/event_page.dart' as _i8;
import '../presentation/home/directions/directions_information_page.dart'
    as _i3;
import '../presentation/home/exhibition/exhibition_information_page.dart'
    as _i4;
import '../presentation/home/exhibition/floor/tab_first_floor_page.dart' as _i9;
import '../presentation/home/exhibition/floor/tab_second_floor_page.dart'
    as _i10;
import '../presentation/home/exhibition/floor/tab_underground_floor_page.dart'
    as _i11;
import '../presentation/home/home_page.dart' as _i5;
import '../presentation/home/visiting/visiting_information_page.dart' as _i2;
import '../presentation/location/location_page.dart' as _i6;
import '../presentation/main/main_page.dart' as _i1;
import '../presentation/preview/preview_page.dart' as _i7;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    VisitingInformationRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.VisitingInformationPage());
    },
    DirectionsInformationRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.DirectionsInformationPage());
    },
    ExhibitionInformationRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.ExhibitionInformationPage());
    },
    HomeRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    LocationRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i6.LocationPage());
    },
    PreViewRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.PreViewPage());
    },
    EventRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i8.EventPage());
    },
    TabFirstFloorRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i9.TabFirstFloorPage());
    },
    TabSecondFloorRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i10.TabSecondFloorPage());
    },
    TabUndergroundFloorRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i11.TabUndergroundFloorPage());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(MainRoute.name, path: '/', children: [
          _i12.RouteConfig(HomeRoute.name,
              path: 'home', parent: MainRoute.name),
          _i12.RouteConfig(LocationRoute.name,
              path: 'location', parent: MainRoute.name),
          _i12.RouteConfig(PreViewRoute.name,
              path: 'preview', parent: MainRoute.name),
          _i12.RouteConfig(EventRoute.name,
              path: 'event', parent: MainRoute.name)
        ]),
        _i12.RouteConfig(VisitingInformationRoute.name,
            path: '/visiting_information'),
        _i12.RouteConfig(DirectionsInformationRoute.name,
            path: '/directions_information'),
        _i12.RouteConfig(ExhibitionInformationRoute.name,
            path: '/exhibition_information',
            children: [
              _i12.RouteConfig(TabFirstFloorRoute.name,
                  path: 'tab_first', parent: ExhibitionInformationRoute.name),
              _i12.RouteConfig(TabSecondFloorRoute.name,
                  path: 'tab_second', parent: ExhibitionInformationRoute.name),
              _i12.RouteConfig(TabUndergroundFloorRoute.name,
                  path: 'tab_underground',
                  parent: ExhibitionInformationRoute.name)
            ])
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i12.PageRouteInfo<void> {
  const MainRoute({List<_i12.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.VisitingInformationPage]
class VisitingInformationRoute extends _i12.PageRouteInfo<void> {
  const VisitingInformationRoute()
      : super(VisitingInformationRoute.name, path: '/visiting_information');

  static const String name = 'VisitingInformationRoute';
}

/// generated route for
/// [_i3.DirectionsInformationPage]
class DirectionsInformationRoute extends _i12.PageRouteInfo<void> {
  const DirectionsInformationRoute()
      : super(DirectionsInformationRoute.name, path: '/directions_information');

  static const String name = 'DirectionsInformationRoute';
}

/// generated route for
/// [_i4.ExhibitionInformationPage]
class ExhibitionInformationRoute extends _i12.PageRouteInfo<void> {
  const ExhibitionInformationRoute({List<_i12.PageRouteInfo>? children})
      : super(ExhibitionInformationRoute.name,
            path: '/exhibition_information', initialChildren: children);

  static const String name = 'ExhibitionInformationRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.LocationPage]
class LocationRoute extends _i12.PageRouteInfo<void> {
  const LocationRoute() : super(LocationRoute.name, path: 'location');

  static const String name = 'LocationRoute';
}

/// generated route for
/// [_i7.PreViewPage]
class PreViewRoute extends _i12.PageRouteInfo<void> {
  const PreViewRoute() : super(PreViewRoute.name, path: 'preview');

  static const String name = 'PreViewRoute';
}

/// generated route for
/// [_i8.EventPage]
class EventRoute extends _i12.PageRouteInfo<void> {
  const EventRoute() : super(EventRoute.name, path: 'event');

  static const String name = 'EventRoute';
}

/// generated route for
/// [_i9.TabFirstFloorPage]
class TabFirstFloorRoute extends _i12.PageRouteInfo<void> {
  const TabFirstFloorRoute()
      : super(TabFirstFloorRoute.name, path: 'tab_first');

  static const String name = 'TabFirstFloorRoute';
}

/// generated route for
/// [_i10.TabSecondFloorPage]
class TabSecondFloorRoute extends _i12.PageRouteInfo<void> {
  const TabSecondFloorRoute()
      : super(TabSecondFloorRoute.name, path: 'tab_second');

  static const String name = 'TabSecondFloorRoute';
}

/// generated route for
/// [_i11.TabUndergroundFloorPage]
class TabUndergroundFloorRoute extends _i12.PageRouteInfo<void> {
  const TabUndergroundFloorRoute()
      : super(TabUndergroundFloorRoute.name, path: 'tab_underground');

  static const String name = 'TabUndergroundFloorRoute';
}

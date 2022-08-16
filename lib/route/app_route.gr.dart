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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../presentation/event/event_page.dart' as _i5;
import '../presentation/home/home_page.dart' as _i2;
import '../presentation/location/location_page.dart' as _i3;
import '../presentation/main/main_page.dart' as _i1;
import '../presentation/preview/preview_page.dart' as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    HomeRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    LocationRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.LocationPage());
    },
    PreViewRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.PreViewPage());
    },
    EventRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.EventPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(MainRoute.name, path: '/', children: [
          _i6.RouteConfig(HomeRoute.name, path: 'home', parent: MainRoute.name),
          _i6.RouteConfig(LocationRoute.name,
              path: 'location', parent: MainRoute.name),
          _i6.RouteConfig(PreViewRoute.name,
              path: 'preview', parent: MainRoute.name),
          _i6.RouteConfig(EventRoute.name,
              path: 'event', parent: MainRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute({List<_i6.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.LocationPage]
class LocationRoute extends _i6.PageRouteInfo<void> {
  const LocationRoute() : super(LocationRoute.name, path: 'location');

  static const String name = 'LocationRoute';
}

/// generated route for
/// [_i4.PreViewPage]
class PreViewRoute extends _i6.PageRouteInfo<void> {
  const PreViewRoute() : super(PreViewRoute.name, path: 'preview');

  static const String name = 'PreViewRoute';
}

/// generated route for
/// [_i5.EventPage]
class EventRoute extends _i6.PageRouteInfo<void> {
  const EventRoute() : super(EventRoute.name, path: 'event');

  static const String name = 'EventRoute';
}

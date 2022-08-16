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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../presentation/event/event_page.dart' as _i8;
import '../presentation/home/directions/directions_information_page.dart'
    as _i4;
import '../presentation/home/exhibition/exhibition_information_page.dart'
    as _i3;
import '../presentation/home/home_page.dart' as _i5;
import '../presentation/home/visiting/visiting_information_page.dart' as _i2;
import '../presentation/location/location_page.dart' as _i6;
import '../presentation/main/main_page.dart' as _i1;
import '../presentation/preview/preview_page.dart' as _i7;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    VisitingInformationRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.VisitingInformationPage());
    },
    ExhibitionInformationRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.ExhibitionInformationPage());
    },
    DirectionsInformationRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.DirectionsInformationPage());
    },
    HomeRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    LocationRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i6.LocationPage());
    },
    PreViewRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.PreViewPage());
    },
    EventRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i8.EventPage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(MainRoute.name, path: '/', children: [
          _i9.RouteConfig(HomeRoute.name, path: 'home', parent: MainRoute.name),
          _i9.RouteConfig(LocationRoute.name,
              path: 'location', parent: MainRoute.name),
          _i9.RouteConfig(PreViewRoute.name,
              path: 'preview', parent: MainRoute.name),
          _i9.RouteConfig(EventRoute.name,
              path: 'event', parent: MainRoute.name)
        ]),
        _i9.RouteConfig(VisitingInformationRoute.name,
            path: '/visiting_information'),
        _i9.RouteConfig(ExhibitionInformationRoute.name,
            path: '/exhibition_information'),
        _i9.RouteConfig(DirectionsInformationRoute.name,
            path: '/directions_information')
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.VisitingInformationPage]
class VisitingInformationRoute extends _i9.PageRouteInfo<void> {
  const VisitingInformationRoute()
      : super(VisitingInformationRoute.name, path: '/visiting_information');

  static const String name = 'VisitingInformationRoute';
}

/// generated route for
/// [_i3.ExhibitionInformationPage]
class ExhibitionInformationRoute extends _i9.PageRouteInfo<void> {
  const ExhibitionInformationRoute()
      : super(ExhibitionInformationRoute.name, path: '/exhibition_information');

  static const String name = 'ExhibitionInformationRoute';
}

/// generated route for
/// [_i4.DirectionsInformationPage]
class DirectionsInformationRoute extends _i9.PageRouteInfo<void> {
  const DirectionsInformationRoute()
      : super(DirectionsInformationRoute.name, path: '/directions_information');

  static const String name = 'DirectionsInformationRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.LocationPage]
class LocationRoute extends _i9.PageRouteInfo<void> {
  const LocationRoute() : super(LocationRoute.name, path: 'location');

  static const String name = 'LocationRoute';
}

/// generated route for
/// [_i7.PreViewPage]
class PreViewRoute extends _i9.PageRouteInfo<void> {
  const PreViewRoute() : super(PreViewRoute.name, path: 'preview');

  static const String name = 'PreViewRoute';
}

/// generated route for
/// [_i8.EventPage]
class EventRoute extends _i9.PageRouteInfo<void> {
  const EventRoute() : super(EventRoute.name, path: 'event');

  static const String name = 'EventRoute';
}

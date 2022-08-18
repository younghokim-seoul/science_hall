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
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

import '../domain/entity/show_room_entity.dart' as _i16;
import '../presentation/event/event_page.dart' as _i10;
import '../presentation/home/directions/directions_information_page.dart'
    as _i3;
import '../presentation/home/exhibition/detail/detail_exhibition_page.dart'
    as _i5;
import '../presentation/home/exhibition/exhibition_information_page.dart'
    as _i4;
import '../presentation/home/exhibition/floor/tab_first_floor_page.dart'
    as _i11;
import '../presentation/home/exhibition/floor/tab_second_floor_page.dart'
    as _i12;
import '../presentation/home/exhibition/floor/tab_underground_floor_page.dart'
    as _i13;
import '../presentation/home/home_page.dart' as _i7;
import '../presentation/home/visiting/visiting_information_page.dart' as _i2;
import '../presentation/location/location_page.dart' as _i8;
import '../presentation/main/main_page.dart' as _i1;
import '../presentation/preview/preview_page.dart' as _i9;
import '../presentation/signup/signup_page.dart' as _i6;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    VisitingInformationRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.VisitingInformationPage());
    },
    DirectionsInformationRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.DirectionsInformationPage());
    },
    ExhibitionInformationRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.ExhibitionInformationPage());
    },
    DetailExhibitionRoute.name: (routeData) {
      final args = routeData.argsAs<DetailExhibitionRouteArgs>();
      return _i14.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i5.DetailExhibitionPage(
              key: args.key, showRoomEntity: args.showRoomEntity));
    },
    SignupRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i6.SignupPage());
    },
    HomeRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.HomePage());
    },
    LocationRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i8.LocationPage());
    },
    PreViewRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i9.PreViewPage());
    },
    EventRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i10.EventPage());
    },
    TabFirstFloorRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i11.TabFirstFloorPage());
    },
    TabSecondFloorRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i12.TabSecondFloorPage());
    },
    TabUndergroundFloorRoute.name: (routeData) {
      return _i14.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i13.TabUndergroundFloorPage());
    }
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(MainRoute.name, path: '/', children: [
          _i14.RouteConfig(HomeRoute.name,
              path: 'home', parent: MainRoute.name),
          _i14.RouteConfig(LocationRoute.name,
              path: 'location', parent: MainRoute.name),
          _i14.RouteConfig(PreViewRoute.name,
              path: 'preview', parent: MainRoute.name),
          _i14.RouteConfig(EventRoute.name,
              path: 'event', parent: MainRoute.name)
        ]),
        _i14.RouteConfig(VisitingInformationRoute.name,
            path: '/visiting_information'),
        _i14.RouteConfig(DirectionsInformationRoute.name,
            path: '/directions_information'),
        _i14.RouteConfig(ExhibitionInformationRoute.name,
            path: '/exhibition_information',
            children: [
              _i14.RouteConfig(TabFirstFloorRoute.name,
                  path: 'tab_first', parent: ExhibitionInformationRoute.name),
              _i14.RouteConfig(TabSecondFloorRoute.name,
                  path: 'tab_second', parent: ExhibitionInformationRoute.name),
              _i14.RouteConfig(TabUndergroundFloorRoute.name,
                  path: 'tab_underground',
                  parent: ExhibitionInformationRoute.name)
            ]),
        _i14.RouteConfig(DetailExhibitionRoute.name,
            path: '/detail_exhibition'),
        _i14.RouteConfig(SignupRoute.name, path: '/signup')
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i14.PageRouteInfo<void> {
  const MainRoute({List<_i14.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.VisitingInformationPage]
class VisitingInformationRoute extends _i14.PageRouteInfo<void> {
  const VisitingInformationRoute()
      : super(VisitingInformationRoute.name, path: '/visiting_information');

  static const String name = 'VisitingInformationRoute';
}

/// generated route for
/// [_i3.DirectionsInformationPage]
class DirectionsInformationRoute extends _i14.PageRouteInfo<void> {
  const DirectionsInformationRoute()
      : super(DirectionsInformationRoute.name, path: '/directions_information');

  static const String name = 'DirectionsInformationRoute';
}

/// generated route for
/// [_i4.ExhibitionInformationPage]
class ExhibitionInformationRoute extends _i14.PageRouteInfo<void> {
  const ExhibitionInformationRoute({List<_i14.PageRouteInfo>? children})
      : super(ExhibitionInformationRoute.name,
            path: '/exhibition_information', initialChildren: children);

  static const String name = 'ExhibitionInformationRoute';
}

/// generated route for
/// [_i5.DetailExhibitionPage]
class DetailExhibitionRoute
    extends _i14.PageRouteInfo<DetailExhibitionRouteArgs> {
  DetailExhibitionRoute(
      {_i15.Key? key, required _i16.ShowRoomEntity showRoomEntity})
      : super(DetailExhibitionRoute.name,
            path: '/detail_exhibition',
            args: DetailExhibitionRouteArgs(
                key: key, showRoomEntity: showRoomEntity));

  static const String name = 'DetailExhibitionRoute';
}

class DetailExhibitionRouteArgs {
  const DetailExhibitionRouteArgs({this.key, required this.showRoomEntity});

  final _i15.Key? key;

  final _i16.ShowRoomEntity showRoomEntity;

  @override
  String toString() {
    return 'DetailExhibitionRouteArgs{key: $key, showRoomEntity: $showRoomEntity}';
  }
}

/// generated route for
/// [_i6.SignupPage]
class SignupRoute extends _i14.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i8.LocationPage]
class LocationRoute extends _i14.PageRouteInfo<void> {
  const LocationRoute() : super(LocationRoute.name, path: 'location');

  static const String name = 'LocationRoute';
}

/// generated route for
/// [_i9.PreViewPage]
class PreViewRoute extends _i14.PageRouteInfo<void> {
  const PreViewRoute() : super(PreViewRoute.name, path: 'preview');

  static const String name = 'PreViewRoute';
}

/// generated route for
/// [_i10.EventPage]
class EventRoute extends _i14.PageRouteInfo<void> {
  const EventRoute() : super(EventRoute.name, path: 'event');

  static const String name = 'EventRoute';
}

/// generated route for
/// [_i11.TabFirstFloorPage]
class TabFirstFloorRoute extends _i14.PageRouteInfo<void> {
  const TabFirstFloorRoute()
      : super(TabFirstFloorRoute.name, path: 'tab_first');

  static const String name = 'TabFirstFloorRoute';
}

/// generated route for
/// [_i12.TabSecondFloorPage]
class TabSecondFloorRoute extends _i14.PageRouteInfo<void> {
  const TabSecondFloorRoute()
      : super(TabSecondFloorRoute.name, path: 'tab_second');

  static const String name = 'TabSecondFloorRoute';
}

/// generated route for
/// [_i13.TabUndergroundFloorPage]
class TabUndergroundFloorRoute extends _i14.PageRouteInfo<void> {
  const TabUndergroundFloorRoute()
      : super(TabUndergroundFloorRoute.name, path: 'tab_underground');

  static const String name = 'TabUndergroundFloorRoute';
}

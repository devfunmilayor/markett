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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../../features/dashboard.dart' as _i2;
import '../../../features/settings/presentation/pages/settings_v.dart' as _i7;
import '../../../features/store/presentation/pages/detailed_v.dart' as _i3;
import '../../../features/store/presentation/pages/store_v.dart' as _i4;
import '../../../features/voucher/presentation/pages/voucher_v.dart' as _i5;
import '../../../features/wallet/presentation/pages/wallet_v.dart' as _i6;
import '../../../splash.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SPalshScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SPalshScreen(),
      );
    },
    DashBoardView.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.DashBoardView(),
      );
    },
    DetailedView.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.DetailedView(),
      );
    },
    StoreView.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.StoreView(),
      );
    },
    VoucherView.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.VoucherView(),
      );
    },
    WalletView.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.WalletView(),
      );
    },
    SettingsView.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SettingsView(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SPalshScreen.name,
          path: '/',
        ),
        _i8.RouteConfig(
          DashBoardView.name,
          path: 'DASHBOARD_ROUTE',
          children: [
            _i8.RouteConfig(
              StoreView.name,
              path: 'HOME_ROUTE',
              parent: DashBoardView.name,
            ),
            _i8.RouteConfig(
              VoucherView.name,
              path: 'VOUCHER_ROUTE',
              parent: DashBoardView.name,
            ),
            _i8.RouteConfig(
              WalletView.name,
              path: 'WALLET_ROUTE',
              parent: DashBoardView.name,
            ),
            _i8.RouteConfig(
              SettingsView.name,
              path: 'SETTINGS_ROUTE',
              parent: DashBoardView.name,
            ),
          ],
        ),
        _i8.RouteConfig(
          DetailedView.name,
          path: '/DETAILED_ROUTE',
        ),
      ];
}

/// generated route for
/// [_i1.SPalshScreen]
class SPalshScreen extends _i8.PageRouteInfo<void> {
  const SPalshScreen()
      : super(
          SPalshScreen.name,
          path: '/',
        );

  static const String name = 'SPalshScreen';
}

/// generated route for
/// [_i2.DashBoardView]
class DashBoardView extends _i8.PageRouteInfo<void> {
  const DashBoardView({List<_i8.PageRouteInfo>? children})
      : super(
          DashBoardView.name,
          path: 'DASHBOARD_ROUTE',
          initialChildren: children,
        );

  static const String name = 'DashBoardView';
}

/// generated route for
/// [_i3.DetailedView]
class DetailedView extends _i8.PageRouteInfo<void> {
  const DetailedView()
      : super(
          DetailedView.name,
          path: '/DETAILED_ROUTE',
        );

  static const String name = 'DetailedView';
}

/// generated route for
/// [_i4.StoreView]
class StoreView extends _i8.PageRouteInfo<void> {
  const StoreView()
      : super(
          StoreView.name,
          path: 'HOME_ROUTE',
        );

  static const String name = 'StoreView';
}

/// generated route for
/// [_i5.VoucherView]
class VoucherView extends _i8.PageRouteInfo<void> {
  const VoucherView()
      : super(
          VoucherView.name,
          path: 'VOUCHER_ROUTE',
        );

  static const String name = 'VoucherView';
}

/// generated route for
/// [_i6.WalletView]
class WalletView extends _i8.PageRouteInfo<void> {
  const WalletView()
      : super(
          WalletView.name,
          path: 'WALLET_ROUTE',
        );

  static const String name = 'WalletView';
}

/// generated route for
/// [_i7.SettingsView]
class SettingsView extends _i8.PageRouteInfo<void> {
  const SettingsView()
      : super(
          SettingsView.name,
          path: 'SETTINGS_ROUTE',
        );

  static const String name = 'SettingsView';
}

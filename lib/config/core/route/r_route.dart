import 'package:auto_route/auto_route.dart';
import 'package:markett/config/core/route/route.dart';
import 'package:markett/features/dashboard.dart';
import 'package:markett/features/settings/presentation/pages/settings_v.dart';
import 'package:markett/features/store/presentation/pages/detailed_v.dart';
import 'package:markett/features/store/presentation/pages/store_v.dart';
import 'package:markett/features/voucher/presentation/pages/voucher_v.dart';
import 'package:markett/features/wallet/presentation/pages/wallet_v.dart';
import 'package:markett/splash.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(
    page: SPalshScreen,
    initial: true,
  ),
  AutoRoute(
    path: MarketRouteTR.DASHBOARD_ROUTE,
    page: DashBoardView,
    children: [
      AutoRoute(path: MarketRouteTR.HOME_ROUTE, page: StoreView),
      AutoRoute(path: MarketRouteTR.VOUCHER_ROUTE, page: VoucherView),
      AutoRoute(path: MarketRouteTR.WALLET_ROUTE, page: WalletView),
      AutoRoute(path: MarketRouteTR.SETTINGS_ROUTE, page: SettingsView),
    ],
  ),
  AutoRoute(
    page: DetailedView,
    path: MarketRouteTR.DETAILED_ROUTE,
  ),
])
class $AppRouter {}

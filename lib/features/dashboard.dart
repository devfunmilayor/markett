// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:markett/config/core/resources/textstyle_x.dart';
import 'package:markett/config/core/route/r_route.gr.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        StoreView(),
        VoucherView(),
        WalletView(),
        SettingsView(),
      ],
      lazyLoad: false,
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          selectedItemColor: ColorManager.black,
          unselectedItemColor: Colors.grey.shade500,
          selectedFontSize: 9.sp,
          selectedLabelStyle:
              getSemiBoldStyle(color: ColorManager.black, fontSize: 9.sp),
          unselectedLabelStyle:
              getRegularStyle(color: ColorManager.grey, fontSize: 9.sp),
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            tabsRouter.setActiveIndex(index);
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                PhosphorIcons.house_simple,
                size: 15,
                color: Colors.grey.shade500,
              ),
              activeIcon: Icon(
                PhosphorIcons.house_simple_fill,
                size: 15,
                color: ColorManager.dashBoardTabColor,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Voucher',
              activeIcon: Icon(
                PhosphorIcons.database_fill,
                size: 15,
                color: ColorManager.dashBoardTabColor,
              ),
              icon: Icon(
                PhosphorIcons.database_fill,
                size: 15,
                color: Colors.grey.shade500,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Wallet',
              icon: Icon(
                PhosphorIcons.wallet_fill,
                size: 15,
                color: Colors.grey.shade500,
              ),
              activeIcon: Icon(
                PhosphorIcons.wallet_fill,
                size: 15,
                color: ColorManager.dashBoardTabColor,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(
                Icons.settings,
                size: 15,
                color: Colors.grey.shade500,
              ),
              activeIcon: Icon(
                Icons.settings,
                size: 15,
                color: ColorManager.dashBoardTabColor,
              ),
            ),
          ],
        );
      },
    );
  }
}

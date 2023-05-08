import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markett/config/core/di/injector.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:markett/config/core/route/r_route.gr.dart';
import 'package:markett/config/core/route/route.dart';

class SPalshScreen extends StatefulWidget {
  const SPalshScreen({super.key});

  @override
  State<SPalshScreen> createState() => _SPalshScreenState();
}

class _SPalshScreenState extends State<SPalshScreen> {
  final r = GlobalKey<AutoRouterState>();
  Timer? timer;
  bool hasCompleteSplash = false;
  splashTimer() async {
    timer = Timer(const Duration(seconds: 4), () {
      si<AppRouter>().replaceNamed(MarketRouteTR.DASHBOARD_ROUTE);
    });
  }

  @override
  void initState() {
    splashTimer();

    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var dimension = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          top: mediaQuery.padding.top + dimension.height * 0.07),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                  height: dimension.height * 0.12,
                  width: dimension.height * 0.12,
                  padding: EdgeInsets.all(20.sp),
                  child: Icon(
                    PhosphorIcons.shopping_cart_light,
                    size: 60,
                    color: ColorManager.black,
                  )),
              SizedBox(
                height: dimension.height * 0.12,
                width: dimension.height * 0.12,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                  strokeWidth: 1,
                  valueColor: AlwaysStoppedAnimation(
                    ColorManager.grey.withOpacity(0.3),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: dimension.height * 0.2,
          ),
        ],
      ),
    );
  }
}

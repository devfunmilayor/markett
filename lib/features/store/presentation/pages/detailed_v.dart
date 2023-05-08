// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:markett/config/core/di/injector.dart';
import 'package:markett/config/core/extension/num.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:markett/config/core/resources/textstyle_x.dart';
import 'package:markett/config/core/route/r_route.gr.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:markett/features/store/data/models/oth_model.dart';
import 'package:markett/features/store/presentation/pages/about_v.dart';
import 'package:markett/features/store/presentation/pages/review.dart';
import 'package:markett/features/store/presentation/widgets/bottom_nav_wid.dart';
import 'package:markett/features/store/presentation/widgets/cloth_wid.dart';
import 'package:markett/features/store/presentation/widgets/rowing_wid.dart';
import 'package:markett/features/store/presentation/widgets/rowwim.dart';

class DetailedView extends StatefulWidget {
  const DetailedView({super.key});

  @override
  State<DetailedView> createState() => _DetailedViewState();
}

class _DetailedViewState extends State<DetailedView>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  ScrollController? primaryScrollController;
  final tabListView = <Widget>[AboutView(), Review()];

  @override
  void initState() {
    controller = TabController(vsync: this, length: 2);
    // scrollup();

    primaryScrollController?.addListener(scrollup);
    super.initState();
  }

  scrollup() async {
    final double start = 0;
    primaryScrollController?.jumpTo(start);

    primaryScrollController?.animateTo(start,
        duration: Duration(seconds: 1), curve: Curves.easeIn);
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: BottomNavWid(),
        backgroundColor: ColorManager.white,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: NestedScrollView(
            controller: primaryScrollController,
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  automaticallyImplyLeading: true,
                  stretch: true,
                  pinned: true,
                  floating: true,
                  backgroundColor: ColorManager.white,
                  leading: IconButton(
                      onPressed: () => si<AppRouter>().popTop(),
                      icon: Icon(
                        CupertinoIcons.back,
                        color: ColorManager.black,
                        size: 25,
                      )).animate().fade(duration: 300.ms).scale(delay: 400.ms),
                  actions: listWidgetDetailed,
                ),
              ];
            },
            body: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(
                top: 20,
                // left: 25.0,
                // right: 25.0,
              ),
              children: [
                ClothWid(),
                12.0.h,
                rwwingWim(),
                12.0.h,
                ListTile(
                  contentPadding: EdgeInsets.only(left: 25, right: 25),
                  title: Text(
                    'Essential Men\'s Short - Sleeve \nCrewneck T-Shirt',
                    style:
                        getBoldStyle(color: ColorManager.black, fontSize: 14),
                  ),
                ),
                12.0.h,
                RowingWid(),
                25.0.h,
                Container(
                  color: ColorManager.vCard.withOpacity(0.4),
                  alignment: Alignment.topLeft,
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                  child: TabBar(
                    unselectedLabelColor: ColorManager.iconColor,
                    labelStyle: getBoldStyle(
                        color: ColorManager.dashBoardTabColor, fontSize: 13),
                    labelColor: ColorManager.dashBoardTabColor,
                    dividerColor: ColorManager.black,
                    unselectedLabelStyle: getRegularStyle(
                        color: ColorManager.iconColor, fontSize: 13),
                    tabs: [
                      Tab(
                        text: 'About Item',
                      ),
                      Tab(
                        text: 'Reviews',
                      ),
                    ],
                    controller: controller,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: ColorManager.dashBoardTabColor,
                    indicatorWeight: s.width * 0.003,
                    enableFeedback: true,
                    automaticIndicatorColorAdjustment: true,
                    indicatorPadding: EdgeInsets.all(1),
                  ),
                ),
                Container(
                  color: ColorManager.vCard.withOpacity(0.4),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  height: s.height,
                  child: TabBarView(
                    controller: controller,
                    children: tabListView,
                  ),
                ),
              ]
                  .animate(interval: 200.ms)
                  .fade(duration: 1500.ms, curve: Curves.bounceOut),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:markett/config/util/input_txt.dart';
import 'package:markett/config/core/resources/textstyle_x.dart';
import 'package:badges/badges.dart' as badges;
import 'package:markett/gen/assets.gen.dart';

var imgUrlList = [
  (Assets.images.cloth2A.path),
  (Assets.images.cloth2B.path),
  (Assets.images.cloth2A.path),
  (Assets.images.cloth2B.path),
];
var colorTemp = [
  HexColor.fromHex('#E8EBEA'),
  HexColor.fromHex('#DACED0'),
];

List<Widget> listWidgetDetailed = [
  IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.favorite,
        color: ColorManager.favoriteColor,
        size: 25,
      )).animate().fade(duration: 400.ms).scale(delay: 500.ms),
  IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.share_outlined,
        color: ColorManager.iconColor,
        size: 25,
      )).animate().fade(duration: 400.ms).scale(delay: 600.ms),
  Transform.translate(
    offset: const Offset(-5, 5),
    child: badges.Badge(
      position: badges.BadgePosition.topEnd(top: 12, end: 12),
      showBadge: true,
      ignorePointer: false,
      onTap: () {},
      badgeContent: Text(
        '1',
        style: getBoldStyle(color: ColorManager.white, fontSize: 8),
      ),
      badgeAnimation: const badges.BadgeAnimation.fade(
        animationDuration: Duration(milliseconds: 80),
        colorChangeAnimationDuration: Duration(milliseconds: 80),
        loopAnimation: false,
        curve: Curves.easeIn,
        colorChangeAnimationCurve: Curves.easeIn,
      ),
      badgeStyle: badges.BadgeStyle(
        shape: badges.BadgeShape.square,
        badgeColor: ColorManager.favoriteColor,
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
        borderRadius: BorderRadius.circular(3),
        elevation: 0,
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              PhosphorIcons.bag_light,
              color: ColorManager.iconColor,
              size: 25,
            )),
      ),
    ),
  ).animate().fade(duration: 400.ms).scale(delay: 700.ms),
];
List<Widget> listWidget = [
  Expanded(
    flex: 3,
    child: Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 10),
      child: SearchTextField(
        labelText: 'Search......',
        onChanged: (value) {},
        prefix: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: ColorManager.iconColor,
              size: 18,
            )),
      ),
    ),
  ),
  Expanded(
    flex: 1,
    child: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          badges.Badge(
            position: badges.BadgePosition.topEnd(top: 8, end: 5),
            showBadge: true,
            ignorePointer: false,
            onTap: () {},
            badgeContent: Text(
              '1',
              style: getBoldStyle(color: ColorManager.white, fontSize: 8),
            ),
            badgeAnimation: const badges.BadgeAnimation.fade(
              animationDuration: Duration(milliseconds: 80),
              colorChangeAnimationDuration: Duration(milliseconds: 80),
              loopAnimation: false,
              curve: Curves.easeIn,
              colorChangeAnimationCurve: Curves.easeIn,
            ),
            badgeStyle: badges.BadgeStyle(
              shape: badges.BadgeShape.square,
              badgeColor: ColorManager.favoriteColor,
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              borderRadius: BorderRadius.circular(3),
              elevation: 0,
            ),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  PhosphorIcons.bag_light,
                  color: ColorManager.iconColor,
                  size: 25,
                )),
          ),
          // 4.0.w,
          badges.Badge(
              position: badges.BadgePosition.topEnd(top: 8, end: 3),
              showBadge: true,
              ignorePointer: false,
              onTap: () {},
              badgeContent: Text(
                '9+',
                style: getBoldStyle(color: ColorManager.white, fontSize: 8),
              ),
              badgeAnimation: const badges.BadgeAnimation.fade(
                animationDuration: Duration(milliseconds: 80),
                colorChangeAnimationDuration: Duration(milliseconds: 80),
                loopAnimation: false,
                curve: Curves.easeIn,
                colorChangeAnimationCurve: Curves.easeIn,
              ),
              badgeStyle: badges.BadgeStyle(
                shape: badges.BadgeShape.square,
                badgeColor: ColorManager.favoriteColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.5, vertical: 3),
                borderRadius: BorderRadius.circular(3),
                elevation: 0,
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    PhosphorIcons.chat_centered_dots_light,
                    color: ColorManager.iconColor,
                    size: 25,
                  ))),
        ],
      ),
    ),
  ),
];
var othListVal = [
  OthDataSet(iconData: Icons.cast_connected_rounded, title: 'Category'),
  OthDataSet(iconData: Icons.flight, title: 'Flight'),
  OthDataSet(iconData: Icons.menu_book_outlined, title: 'Bill'),
  OthDataSet(iconData: PhosphorIcons.globe_simple, title: 'Data plan'),
  OthDataSet(iconData: Icons.travel_explore_rounded, title: 'Top Up'),
  OthDataSet(iconData: Icons.track_changes_outlined, title: 'Loan'),
  OthDataSet(iconData: Icons.credit_card_outlined, title: 'Credit card'),
  OthDataSet(iconData: Icons.devices, title: 'Device financing'),
];

class OthDataSet {
  final String? title;
  final IconData? iconData;

  OthDataSet({this.title, this.iconData});
}

class ColorPalete {
  final Color? color;

  ColorPalete({this.color});
}

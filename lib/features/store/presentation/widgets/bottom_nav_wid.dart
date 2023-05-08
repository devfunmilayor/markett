// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:markett/config/core/extension/num.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:markett/config/core/resources/textstyle_x.dart';

class BottomNavWid extends StatelessWidget {
  const BottomNavWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              border:
                  Border.all(color: ColorManager.iconColor.withOpacity(0.1)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0.5,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                ),
              ],
              color: ColorManager.bottomNavColor,
            ),
            height: 120,
            child: ListTile(
              trailing: Transform.translate(
                offset: Offset(0, 24),
                child: SizedBox(
                  width: s.width * 0.4,
                  height: s.height * 0.06,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: s.height * 0.055,
                          padding:
                              EdgeInsets.symmetric(horizontal: 9, vertical: 3),
                          decoration: BoxDecoration(
                            color: ColorManager.dashBoardTabColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                PhosphorIcons.shopping_cart_light,
                                color: ColorManager.white,
                                size: 20,
                              ),
                              6.0.w,
                              Text(
                                '1',
                                style: getExtraBoldStyle(
                                    color: ColorManager.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          height: s.height * 0.055,
                          padding: EdgeInsets.symmetric(horizontal: 9),
                          decoration: BoxDecoration(
                            color: ColorManager.byNowBtn,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Buy Now',
                            style: getBoldStyle(
                                color: ColorManager.white, fontSize: 13),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              title: Transform.translate(
                offset: Offset(0, 18),
                child: Text(
                  'Total Price',
                  style: getRegularStyle(
                      color: ColorManager.iconColor, fontSize: 12),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(0, 20),
                child: Text(
                  '\$ 40.00',
                  style: getBoldStyle(
                      color: ColorManager.dashBoardTabColor, fontSize: 25),
                ),
              ),
            ))
        .animate(delay: 1000.ms)
        .fade(duration: 1500.ms, curve: Curves.bounceOut);
  }
}

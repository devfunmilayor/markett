// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:markett/config/core/extension/num.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:markett/config/core/resources/textstyle_x.dart';
import 'package:markett/gen/assets.gen.dart';

class GridTemp extends StatelessWidget {
  const GridTemp({
    super.key,
    this.imgUrl,
    this.tap,
    this.price,
  });

  final String? imgUrl, price;

  final Function()? tap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: ColorManager.cardColorC,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 0.5,
                        blurRadius: 1,
                        offset: Offset(0, 1),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(3),
                      topRight: Radius.circular(3),
                    )),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    SizedBox(
                      height: 100,
                      child: Image.asset(
                        Assets.images.cloth1A.path,
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 1.0,
                      top: 16.0,
                      child: Icon(
                        Icons.favorite,
                        color: ColorManager.favoriteColor,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(3),
                      bottomRight: Radius.circular(3),
                    )),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      title: Text(
                        'Shirt',
                        style: getRegularStyle(
                            color: ColorManager.grey, fontSize: 10),
                      ),
                      subtitle: Text(
                        'Essential Men\'s Short - Sleeve Crewneck T-Shirt',
                        style: getBoldStyle(
                            color: ColorManager.black, fontSize: 11),
                      ),
                    ),
                    5.0.h,
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      visualDensity:
                          VisualDensity(horizontal: -4, vertical: -4),
                      dense: true,
                      leading: Icon(
                        PhosphorIcons.star_fill,
                        color: ColorManager.starcolor,
                        size: 15,
                      ),
                      title: Transform.translate(
                        offset: Offset(-24, 0),
                        child: Text(
                          '4.9 | 2356',
                          style: getBoldStyle(
                              color: ColorManager.grey.withOpacity(0.4),
                              fontSize: 9),
                        ),
                      ),
                      trailing: Text(
                        '\$ ${price ?? ' 45.00'}',
                        style: getBoldStyle(
                            color: ColorManager.dashBoardTabColor,
                            fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

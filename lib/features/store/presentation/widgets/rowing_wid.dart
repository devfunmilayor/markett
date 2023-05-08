// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:markett/config/core/extension/num.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:markett/config/core/resources/textstyle_x.dart';

class RowingWid extends StatelessWidget {
  const RowingWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Icon(
                    PhosphorIcons.star_fill,
                    color: ColorManager.starcolor,
                    size: 15,
                  ),
                  12.0.w,
                  Text(
                    '4.9 Ratings',
                    style: getBoldStyle(
                        color: ColorManager.grey.withOpacity(0.4),
                        fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: ColorManager.iconColor.withOpacity(0.5),
                    size: 7,
                  ),
                  12.0.w,
                  Text(
                    '2.3k+ Reviews',
                    style: getBoldStyle(
                        color: ColorManager.grey.withOpacity(0.4),
                        fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: ColorManager.iconColor.withOpacity(0.5),
                    size: 7,
                  ),
                  12.0.w,
                  Text(
                    '2.9k + Sold',
                    style: getBoldStyle(
                        color: ColorManager.grey.withOpacity(0.4),
                        fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

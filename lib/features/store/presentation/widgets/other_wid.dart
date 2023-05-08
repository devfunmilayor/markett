// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:markett/config/core/extension/num.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:markett/config/core/resources/textstyle_x.dart';

class OtherWid extends StatelessWidget {
  const OtherWid({
    super.key,
    this.title,
    this.icon,
  });

  final String? title;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(4.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: ColorManager.vCard,
            ),
            padding: EdgeInsets.all(12),
            child: Icon(
              icon ?? Icons.cast_connected_rounded,
              color: ColorManager.iconColor,
              size: 18,
            ),
          ),
          5.0.h,
          Text(
            title ?? '',
            style: getRegularStyle(color: ColorManager.grey, fontSize: 10),
          )
        ],
      ),
    );
  }
}

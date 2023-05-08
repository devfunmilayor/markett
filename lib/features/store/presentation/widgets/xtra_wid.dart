// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:markett/config/core/extension/num.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:markett/config/core/resources/textstyle_x.dart';

class ExttraWid extends StatelessWidget {
  const ExttraWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '#FASHION DAY',
          style: getBoldStyle(
            fontSize: 13.0,
            color: ColorManager.black,
          ),
        ),
        12.0.h,
        Text(
          '80% OFF ',
          style: getExtraBoldStyle(
            fontSize: 30.0,
            color: ColorManager.black,
          ),
        ),
        12.0.h,
        Text(
          'Discover Fashion that suits to \nyour style',
          style: getRegularStyle(
            fontSize: 10.0,
            color: ColorManager.black,
          ),
        ),
        12.0.h,
        Container(
          width: s.width * 0.2,
          decoration: BoxDecoration(
              color: ColorManager.black,
              borderRadius: BorderRadius.circular(5)),
          padding: EdgeInsets.all(7),
          child: Text(
            'Check this out',
            style: getBoldStyle(
              color: ColorManager.white,
              fontSize: 9,
            ),
          ),
        )
      ],
    );
  }
}

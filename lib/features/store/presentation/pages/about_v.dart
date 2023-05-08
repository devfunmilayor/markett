import 'package:flutter/material.dart';
import 'package:markett/config/core/extension/num.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:markett/config/core/resources/textstyle_x.dart';
import 'package:markett/features/store/presentation/widgets/rowwim.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    // var s = MediaQuery.of(context).size;

    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        17.0.h,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            brandWid(desc: 'Ashanti-kylian', title: 'Brand:'),
            brandWid(desc: 'Appril-Clours', title: 'Color:'),
          ],
        ),
        28.0.h,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            brandWid(desc: 'Casual Shirt', title: 'Category:'),
            brandWid(desc: 'Polyester', title: 'Material:'),
          ],
        ),
        28.0.h,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            brandWid(desc: 'New', title: 'Condition:'),
            brandWid(desc: '200g', title: 'Heavy:'),
          ],
        ),
        30.0.h,
        Divider(
          thickness: 1,
          color: ColorManager.iconColor.withOpacity(0.15),
        ),
        30.0.h,
        Text(
          'Description :',
          style: getBoldStyle(color: ColorManager.black, fontSize: 12),
        ),
        20.0.h,
        brandWidTxt(
            desc:
                'Long Skinning jean Long Skinning jean Long Skinning jeanLong Skinning jean'),
        brandWidTxt(
            desc:
                'Long Skinning jean Long Skinning jean Long Skinning jeanLong Skinning jean'),
        brandWidTxt(
            desc:
                'Long Skinning jean Long Skinning jean Long Skinning jeanLong Skinning jean'),
        brandWidTxt(
            desc:
                'Long Skinning jean Long Skinning jean Long Skinning jeanLong Skinning jean'),
        brandWidTxt(
            desc:
                'Long Skinning jean Long Skinning jean Long Skinning jeanLong Skinning jean'),
        brandWidTxt(
            desc:
                'Long Skinning jean Long Skinning jean Long Skinning jeanLong Skinning jean'),
        brandWidTxt(
            desc:
                'Long Skinning jean Long Skinning jean Long Skinning jeanLong Skinning jean'),
        brandWidTxt(
            desc:
                'Long Skinning jean Long Skinning jean Long Skinning jeanLong Skinning jean'),
        20.0.h,
        Row(
          children: [
            Text(
              'See less',
              style: getBoldStyle(
                  color: ColorManager.dashBoardTabColor, fontSize: 12),
            ),
            8.0.w,
            Icon(
              Icons.keyboard_arrow_up_outlined,
              size: 18,
              color: ColorManager.iconColor,
            )
          ],
        ),
        25.0.h,
        Divider(
          thickness: 1,
          color: ColorManager.iconColor.withOpacity(0.15),
        ),
        30.0.h,
        Text(
          'Shipping Information:',
          style: getBoldStyle(color: ColorManager.black, fontSize: 12),
        ),
        30.0.h,
        brandWidTnx(
            title: 'Delivery:', desc: 'Shipping from Lagos - ikeja, Nigeria'),
        brandWidTnx(title: 'Shipping:', desc: 'Free International Shipping'),
        brandWidTnx(
            title: 'Arrive:', desc: 'Estimated Arrival on 25th Oct , 2023'),
        20.0.h,
        Divider(
          thickness: 1,
          color: ColorManager.iconColor.withOpacity(0.15),
        ),
      ],
    );
  }
}

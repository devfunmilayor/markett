import 'package:flutter/material.dart';
import 'package:markett/config/core/extension/num.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:markett/config/core/resources/textstyle_x.dart';

Widget rwwingWim() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
    child: Row(
      children: [
        Icon(
          Icons.storefront_sharp,
          color: ColorManager.iconColor.withOpacity(0.6),
          size: 20,
        ),
        12.0.w,
        Text(
          'Tokosmile',
          style: getRegularStyle(color: ColorManager.iconColor, fontSize: 12),
        ),
      ],
    ),
  );
}

Widget brandWid({String? title, String? desc}) {
  return Builder(builder: (context) {
    var s = MediaQuery.of(context).size;

    return SizedBox(
      width: s.width * 0.4,
      child: Row(
        children: [
          Text(
            title ?? 'Brand:',
            style: getRegularStyle(color: ColorManager.iconColor, fontSize: 11),
          ),
          12.0.w,
          Text(
            desc ?? 'Ashanti-kylian',
            style: getBoldStyle(color: ColorManager.black, fontSize: 11),
          ),
        ],
      ),
    );
  });
}

Widget brandWidTnx({String? title, String? desc}) {
  return Builder(builder: (context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(
            // flex: 0,
            child: Text(
              title ?? 'Brand:',
              style:
                  getRegularStyle(color: ColorManager.iconColor, fontSize: 11),
            ),
          ),
          12.0.w,
          Expanded(
            flex: 4,
            child: Text(
              desc ?? 'Ashanti-kylian',
              style: getBoldStyle(color: ColorManager.black, fontSize: 11),
            ),
          ),
        ],
      ),
    );
  });
}

Widget brandWidTxt({String? desc}) {
  return Builder(builder: (context) {
    var s = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(bottom: 10, left: 20),
      width: s.width,
      child: Row(
        children: [
          Icon(
            Icons.circle,
            color: ColorManager.iconColor,
            size: 4,
          ),
          12.0.w,
          Expanded(
            flex: 1,
            child: Text(
              desc ?? 'Ashanti-kylian',
              style: getRegularStyle(color: ColorManager.black, fontSize: 11),
            ),
          ),
        ],
      ),
    );
  });
}

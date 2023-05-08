import 'package:flutter/material.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:markett/config/core/resources/textstyle_x.dart';

class BottomWid extends StatelessWidget {
  const BottomWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, 0),
      child: ListTile(
        splashColor: ColorManager.vCard,
        tileColor: ColorManager.vCard,
        enabled: true,
        contentPadding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 5,
          top: 5,
        ),
        trailing: Text(
          'See more',
          style:
              getBoldStyle(color: ColorManager.dashBoardTabColor, fontSize: 11),
        ),
        title: Text(
          'Best Sale Product',
          style: getBoldStyle(color: ColorManager.black, fontSize: 15),
        ),
      ),
    );
  }
}

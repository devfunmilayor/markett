import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:markett/features/store/data/models/oth_model.dart';
import 'package:markett/gen/assets.gen.dart';

class ClothWid extends StatelessWidget {
  const ClothWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      padding: const EdgeInsets.only(left: 30, top: 30, bottom: 30),
      width: double.infinity,
      decoration: BoxDecoration(
          color: ColorManager.vCard, borderRadius: BorderRadius.circular(12)),
      height: s.height * 0.5,
      child: Row(
        children: [
          Expanded(
            flex: 0,
            child: Column(
              children: imgUrlList
                  .asMap()
                  .entries
                  .map((e) => Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: s.height * 0.07,
                        width: s.width * 0.15,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                              e.value,
                            )),
                            color: ColorManager.iconColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8)),
                      ))
                  .toList()
                  .animate(delay: 600.ms)
                  .fade(duration: 1500.ms, curve: Curves.bounceOut),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: s.height,
              child: Image.asset(
                Assets.images.cloth2A.path,
                fit: BoxFit.cover,
              ),
            )
                .animate(delay: 1000.ms)
                .fade(duration: 1500.ms, curve: Curves.bounceOut),
          )
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:markett/config/core/extension/num.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:markett/features/store/data/models/oth_model.dart';
import 'package:markett/features/store/presentation/widgets/other_wid.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:markett/features/store/presentation/widgets/xtra_wid.dart';

class BgWidg extends StatefulWidget {
  const BgWidg({
    super.key,
  });

  @override
  State<BgWidg> createState() => _BgWidgState();
}

class _BgWidgState extends State<BgWidg> {
  int currentPage = 0;
  final PageController pageController = PageController(initialPage: 0);
  CarouselController carouselController = CarouselController();
  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      if (pageController.page != currentPage) {
        setState(() {
          currentPage = pageController.page!.round();
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;

    return Container(
      color: ColorManager.white,
      child: Column(
        children: [
          SizedBox(
            height: s.height * 0.35,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CarouselSlider(
                  items: colorTemp
                      .asMap()
                      .entries
                      .map((item) => AnimatedContainer(
                            height: s.height * 0.33,
                            decoration: BoxDecoration(
                              color: item.value,
                            ),
                            duration: Duration(milliseconds: 2000),
                          ))
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    height: s.height,
                    // aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 2000),
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentPage = index;
                      });
                    },
                  ),
                ),
                Positioned(
                  // left: 16.0,
                  right: 16.0,
                  top: 166.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      colorTemp.length,
                      (index) => buildDot(
                        index: index,
                        c: ColorManager.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 16.0,
                  right: 16.0,
                  bottom: 16.0,
                  child: ExttraWid(),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              height: s.height * 0.14,
              child: ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: othListVal
                    .asMap()
                    .entries
                    .map((e) => OtherWid(
                          icon: e.value.iconData,
                          title: e.value.title,
                        ))
                    .toList(),
              )),
          10.0.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              othListVal.length,
              (index) => buildDot(index: index),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  double titleOpacity(double shrinkOffset) {
    return 1.0 - max(0.0, shrinkOffset) / 250;
  }

  AnimatedContainer buildDot({int? index, Color? c}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 3.5,
      width: currentPage == index ? 15 : 6,
      decoration: BoxDecoration(
        color:
            currentPage == index ? ColorManager.black : c ?? Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:markett/config/core/di/injector.dart';
import 'package:markett/config/core/resources/color_config.dart';
import 'package:markett/config/core/route/r_route.gr.dart';
import 'package:markett/config/core/route/route.dart';
import 'package:markett/features/store/data/models/oth_model.dart';
import 'package:markett/features/store/presentation/widgets/bottom_wid.dart';
import 'package:markett/features/store/presentation/widgets/grid_temp.dart';
import 'package:markett/features/store/presentation/widgets/header_con.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.vCard,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              stretch: true,
              pinned: true,
              floating: false,
              expandedHeight: 500,
              flexibleSpace: const FlexibleSpaceBar(
                background: BgWidg(),
                stretchModes: [StretchMode.blurBackground],
              ),
              backgroundColor: ColorManager.white,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              automaticallyImplyLeading: true,
              excludeHeaderSemantics: true,
              actions: listWidget,
              bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(100), child: BottomWid()),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GridTemp(
                    tap: () => si<AppRouter>()
                        .navigateNamed(MarketRouteTR.DETAILED_ROUTE),
                  );
                },
                childCount: 6,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 260,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

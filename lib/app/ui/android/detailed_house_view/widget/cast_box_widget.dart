import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:immo_spot/app/controller/detailed_house_view_controller.dart';
import 'package:immo_spot/app/ui/theme/app_colors.dart';

class CastBoxWidget extends GetView<DetailedHouseViewController> {
  //wrapped inside GetView to access controller on the go.
  const CastBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      //align is used to disintegrate stretch function from the column
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: const BoxDecoration(
          color: ColorConst.greyColorShade100,
          borderRadius: BorderRadius.all(
            Radius.circular(26),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: ColorConst.greyColor,
              child: Text(
                controller.getCastSymbol(),
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12, left: 8),
              child: Text(
                controller.assetDetails.castCategory,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

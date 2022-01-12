import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:immo_spot/app/controller/detailed_house_view_controller.dart';
import 'package:immo_spot/app/ui/android/detailed_house_view/widget/cast_box_widget.dart';
import 'package:immo_spot/app/ui/android/detailed_house_view/widget/specification_detail_widget.dart';
import 'package:immo_spot/app/ui/shared_widget/column_padding.dart';
import 'package:immo_spot/app/ui/shared_widget/custom_elevated_button.dart';
import 'package:immo_spot/app/ui/shared_widget/height_box.dart';
import 'package:immo_spot/app/ui/theme/app_assets.dart';
import 'package:immo_spot/app/ui/theme/app_colors.dart';

class DetailedHouseView extends GetView<DetailedHouseViewController> {
  //wrapped inside GetView to access controller on the go.
  const DetailedHouseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConst.primaryColor,
      ),
      body: ListView(
        children: [
          //Hero animation for cool look
          Hero(
            //passing a unique tag
            tag: "HouseHero${controller.index}",
            child: Image.asset(
              AppAssets.homeImagePng,
              width: Get.width,
              fit: BoxFit.fill,
            ),
          ),
          //Padding Integrated Column Widget
          ColumnPadding(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //simple SizedBox with default height
              const HeightBox(16),
              Text(
                controller.assetDetails.title,
                style: Theme.of(context).textTheme.headline3,
              ),
              const HeightBox(4),
              Text(
                controller.assetDetails.subtitle,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const HeightBox(18),
              const CastBoxWidget(),
              const HeightBox(32),
              Text(
                "Characteristics",
                style: Theme.of(context).textTheme.headline4,
              ),
              const HeightBox(16),
              Text(
                controller.assetDetails.characteristics,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const HeightBox(22),
              SpecificationDetailWidget(
                title: 'House Type',
                fieldValue: controller.assetDetails.houseType,
              ),
              SpecificationDetailWidget(
                title: 'Rooms',
                fieldValue: controller.assetDetails.rooms,
              ),
              SpecificationDetailWidget(
                title: 'BedRooms',
                fieldValue: controller.assetDetails.bedRooms,
              ),
              SpecificationDetailWidget(
                title: 'Living Space',
                fieldValue: controller.assetDetails.livingSpace,
                isLast: true,
              ),
              const HeightBox(26),
              CustomElevatedButton(
                elevation: 0,
                onPressed: () {
                  Get.back();
                },
                title: "Report this house",
              ),
            ],
          )
        ],
      ),
    );
  }
}

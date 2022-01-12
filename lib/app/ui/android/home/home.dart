import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:immo_spot/app/controller/home_controller.dart';
import 'package:immo_spot/app/ui/android/home/widget/home_card.dart';
import 'package:immo_spot/app/ui/shared_widget/icon_button.dart';
import 'package:immo_spot/app/ui/theme/app_assets.dart';
import 'package:immo_spot/app/ui/theme/app_colors.dart';

class MyHomePage extends GetView<HomeController> {
  //wrapped inside GetView to access controller on the go.
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.secondaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConst.secondaryColor,
        title: Image.asset(
          AppAssets.logoPng,
          height: 32,
        ),
        actions: [
          //Custom button for circular wrapped icon button
          IconButtonCircular(
            onTap: () {},
            iconString: AppAssets.searchIconPng,
          )
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 12,
        ),
        padding: const EdgeInsets.all(16),
        itemCount: controller.homeModel.length,
        itemBuilder: (context, index) => HomeCard(index: index),
      ),
    );
  }
}

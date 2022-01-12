import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:immo_spot/app/controller/home_controller.dart';
import 'package:immo_spot/app/routes/app_pages.dart';

class HomeCard extends GetView<HomeController> {
  //wrapped inside GetView to access controller on the go.
  const HomeCard({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(
              Routes.DETAILS,
              arguments: {
                "asset_details": controller.homeModel[index],
                'index': index
              },
            );
          },
          child: Hero(
            tag: "HouseHero$index",
            child: Container(
              //static height is given bcz, it doesn't have any child.
              height: 104,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(4.0),
                ),
                //Added inside the background image is to, not to overflow the
                //image when borderRadius is given.
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    controller.homeModel[index].image,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          controller.homeModel[index].title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          controller.homeModel[index].subtitle,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

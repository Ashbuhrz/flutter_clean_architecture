import 'package:get/get.dart';
import 'package:immo_spot/app/data/model/home_model.dart';
import 'package:immo_spot/app/ui/theme/app_assets.dart';

class HomeController extends GetxController {
  //Generating dummy data for homepage.
  //we used to create index variable in DetailedHouseViewController.This can be
  // avoided if the data's are dynamic/unique. Or else we could create
  // one index variable inside AssetDetailModel (commented below)
  List<AssetDetailModel> homeModel = List.generate(
      10,
      (index) => const AssetDetailModel(
          // index:index
          image: AppAssets.homeImagePng,
          title: "Noordeinde 68",
          subtitle: "2514 Gl Den Haag",
          rooms: '3',
          houseType: 'End House',
          castCategory: 'Christian',
          bedRooms: '2',
          characteristics: 'Light and attractive end house with nice details,'
              ' three bedrooms, attic floor and sunny balcony',
          livingSpace: '124m2'));
}

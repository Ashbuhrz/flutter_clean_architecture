import 'package:get/get.dart';
import 'package:immo_spot/app/data/model/home_model.dart';

class DetailedHouseViewController extends GetxController {
  //Arguments passed from the parent widget/screen is collected from here.
  final arg = Get.arguments;
  //Late initializing of AssetDetailModel
  late AssetDetailModel assetDetails;
  //index is used to get track of the widget for Hero animation and passing data
  int index = 0;

  // Collected arguments are passed this function.
  void passArguments() {
    assetDetails = arg['asset_details'];
    index = arg['index'];
  }

  // function for getting the cast symbol / first letter of cast
  String getCastSymbol() {
    return assetDetails.castCategory.split('').first.toUpperCase();
  }

  //first thing to happens when DetailedHouseViewController is created.
  @override
  void onInit() {
    passArguments();
    super.onInit();
  }
}

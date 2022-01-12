import 'package:get/get.dart';
import 'package:immo_spot/app/controller/detailed_house_view_controller.dart';

//Binding DetailedHouseViewController to DetailedHouseView Screen
class AssetDetailBinding extends Bindings {
  @override
  void dependencies() {
    //LazyPut is used to delay initializing controller by whenever needed.
    Get.lazyPut<DetailedHouseViewController>(
      () {
        return DetailedHouseViewController();
      },
    );
  }
}

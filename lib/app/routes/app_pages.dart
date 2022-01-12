import 'package:get/get.dart';
import 'package:immo_spot/app/bindings/asset_details_binding.dart';
import 'package:immo_spot/app/bindings/home_binding.dart';
import 'package:immo_spot/app/ui/android/detailed_house_view/detailed_view.dart';
import 'package:immo_spot/app/ui/android/home/home.dart';
part './app_routes.dart';

//All controller, bindings, arguments are passed from here
//A one place to manage al the initializations and routing
class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const MyHomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DETAILS,
      page: () => const DetailedHouseView(),
      binding: AssetDetailBinding(),
    ),
  ];
}

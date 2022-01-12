import 'package:get/get.dart';
import 'package:immo_spot/app/controller/home_controller.dart';

//Binding HomeController to MyHomePage Screen
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    //LazyPut is used to delay initializing controller by whenever needed.
    Get.lazyPut<HomeController>(
      () {
        return HomeController();
      },
    );
  }
}

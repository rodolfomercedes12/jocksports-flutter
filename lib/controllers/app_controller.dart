import 'package:get/get.dart';

class AppController extends GetxController {
  var currentTabIndex = 0.obs;

  @override
  void onInit() {
    print("INIT App Controller!!!");
    super.onInit();
  }

  @override
  void onClose() {
    print("Close app Controller!!!!");
    super.onClose();
  }
}

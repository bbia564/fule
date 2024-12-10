import 'package:get/get.dart';

import 'ruler_logic.dart';

class RulerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RulerLogic());
  }
}

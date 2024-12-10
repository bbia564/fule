import 'package:get/get.dart';

import 'computer_first_logic.dart';

class ComputerFirstBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComputerFirstLogic());
  }
}

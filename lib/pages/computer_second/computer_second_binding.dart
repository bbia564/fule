import 'package:get/get.dart';

import 'computer_second_logic.dart';

class ComputerSecondBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComputerSecondLogic());
  }
}

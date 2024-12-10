import 'package:get/get.dart';

import '../computer_first/computer_first_logic.dart';
import '../computer_second/computer_second_logic.dart';
import 'computer_tab_logic.dart';

class ComputerTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComputerTabLogic());
    Get.lazyPut(() => ComputerFirstLogic());
    Get.lazyPut(() => ComputerSecondLogic());
  }
}

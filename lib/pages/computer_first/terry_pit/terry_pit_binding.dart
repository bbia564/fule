import 'package:get/get.dart';

import 'terry_pit_logic.dart';

class TerryPitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      PageLogic(),
      permanent: true,
    );
  }
}

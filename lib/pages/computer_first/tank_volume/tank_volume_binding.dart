import 'package:get/get.dart';

import 'tank_volume_logic.dart';

class TankVolumeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TankVolumeLogic());
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sensors_plus/sensors_plus.dart';

class LevelLogic extends GetxController {

  var x = 0.obs;
  var y = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    accelerometerEventStream().listen((AccelerometerEvent event) {
      x.value = event.x.toInt();
      y.value = event.y.toInt();
    });
    super.onInit();
  }

}

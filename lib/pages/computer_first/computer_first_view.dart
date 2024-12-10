import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_widget/styled_widget.dart';

import 'computer_first_logic.dart';

class ComputerFirstPage extends GetView<ComputerFirstLogic> {
  Widget _item(int index) {
    final titles = ['Fuel tank volume Calculator',' Level', 'Ruler','Construction Notes'];
    return Container(
      width: double.infinity,
      height: 60,
      padding: const EdgeInsets.all(15),
      child: <Widget>[
        Image.asset(
          'assets/icon${index + 1}.webp',
          width: 28,
          height: 28,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 10),
        Expanded(child: Text(titles[index])),
        const Icon(
          Icons.keyboard_arrow_right,
          size: 25,
          color: Colors.grey,
        )
      ].toRow(),
    )
        .decorated(color: Colors.white, borderRadius: BorderRadius.circular(12))
        .marginOnly(bottom: 10)
        .gestures(onTap: () {
      switch (index) {
        case 0:
          Get.toNamed('/tank_volume');
          break;
        case 1:
          Get.toNamed('/level');
          break;
        case 2:
          Get.toNamed('/ruler');
          break;
        case 3:
          Get.toNamed('/note_list');
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
            child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: <Widget>[
            <Widget>[
              <Widget>[
                const SizedBox(
                  width: 200,
                  child: Text(
                    'Build computer',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
               const SizedBox(
                  width: 200,
                  child: Text(
                    'Help you plan your budget and execute projects',
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ].toColumn(crossAxisAlignment: CrossAxisAlignment.start),
              Image.asset(
                'assets/icon0.webp',
                width: 102,
                height: 98,
                fit: BoxFit.cover,
              )
            ].toRow(mainAxisAlignment: MainAxisAlignment.spaceBetween),
            const SizedBox(height: 25,),
            _item(0),
            _item(1),
            _item(2),
            _item(3),
          ].toColumn(),
        ).marginAll(15)),
      ),
    );
  }
}

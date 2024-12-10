import 'package:building_computer/main.dart';
import 'package:building_computer/pages/computer_first/tank_volume/computer_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_widget/styled_widget.dart';

import 'tank_volume_logic.dart';

class TankVolumePage extends GetView<TankVolumeLogic> {
  Widget _item(int index) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: <Widget>[
        Text(
          tankVolumes[index],
          textAlign: TextAlign.center,
          style: TextStyle(
              color: controller.type == index ? Colors.white : Colors.black),
        )
      ].toStack(alignment: Alignment.center),
    )
        .decorated(
        color: controller.type == index ? primaryColor : Colors.white,
        borderRadius: BorderRadius.circular(10))
        .gestures(onTap: () {
          controller.type = index;
          controller.cleanData();
          controller.update();
    });
  }

  Widget _tankItem0() {
    return <Widget>[
      const Text('Top Diameter'),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: <Widget>[
          Expanded(
            child: ComputerTextField(
                maxLength: 8,
                value: controller.text0,
                isNumber: true,
                onChange: (value) {
                  controller.text0 = value;
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'centimeter',
            style: TextStyle(color: Colors.grey),
          )
        ].toRow(),
      ).decorated(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1)),
      const SizedBox(
        height: 12,
      ),
      const Text('Bottom Diameter'),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: <Widget>[
          Expanded(
            child: ComputerTextField(
                maxLength: 8,
                value: controller.text1,
                isNumber: true,
                onChange: (value) {
                  controller.text1 = value;
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'centimeter',
            style: TextStyle(color: Colors.grey),
          )
        ].toRow(),
      ).decorated(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1)),
      const SizedBox(
        height: 12,
      ),
      const Text('Cylinder Height'),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: <Widget>[
          Expanded(
            child: ComputerTextField(
                maxLength: 8,
                value: controller.text2,
                isNumber: true,
                onChange: (value) {
                  controller.text2 = value;
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'centimeter',
            style: TextStyle(color: Colors.grey),
          )
        ].toRow(),
      ).decorated(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1)),
      const SizedBox(
        height: 12,
      ),
      const Text('Cone Height'),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: <Widget>[
          Expanded(
            child: ComputerTextField(
                maxLength: 8,
                value: controller.text3,
                isNumber: true,
                onChange: (value) {
                  controller.text3 = value;
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'centimeter',
            style: TextStyle(color: Colors.grey),
          )
        ].toRow(),
      ).decorated(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1)),
      const SizedBox(
        height: 12,
      ),
      const Text('Filled'),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: <Widget>[
          Expanded(
            child: ComputerTextField(
                maxLength: 8,
                value: controller.text4,
                isNumber: true,
                onChange: (value) {
                  controller.text4 = value;
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'centimeter',
            style: TextStyle(color: Colors.grey),
          )
        ].toRow(),
      ).decorated(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1)),
    ].toColumn(crossAxisAlignment: CrossAxisAlignment.start);
  }

  Widget _tankItem1() {
    return <Widget>[
      const Text('Top Diameter'),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: <Widget>[
          Expanded(
            child: ComputerTextField(
                maxLength: 8,
                value: controller.text0,
                isNumber: true,
                onChange: (value) {
                  controller.text0 = value;
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'centimeter',
            style: TextStyle(color: Colors.grey),
          )
        ].toRow(),
      ).decorated(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1)),
      const SizedBox(
        height: 12,
      ),
      const Text('Bottom Diameter'),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: <Widget>[
          Expanded(
            child: ComputerTextField(
                maxLength: 8,
                value: controller.text1,
                isNumber: true,
                onChange: (value) {
                  controller.text1 = value;
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'centimeter',
            style: TextStyle(color: Colors.grey),
          )
        ].toRow(),
      ).decorated(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1)),
      const SizedBox(
        height: 12,
      ),
      const Text('Cone Height'),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: <Widget>[
          Expanded(
            child: ComputerTextField(
                maxLength: 8,
                value: controller.text2,
                isNumber: true,
                onChange: (value) {
                  controller.text2 = value;
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'centimeter',
            style: TextStyle(color: Colors.grey),
          )
        ].toRow(),
      ).decorated(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1)),
      const SizedBox(
        height: 12,
      ),
      const Text('Filled'),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: <Widget>[
          Expanded(
            child: ComputerTextField(
                maxLength: 8,
                value: controller.text3,
                isNumber: true,
                onChange: (value) {
                  controller.text3 = value;
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'centimeter',
            style: TextStyle(color: Colors.grey),
          )
        ].toRow(),
      ).decorated(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1)),
    ].toColumn(crossAxisAlignment: CrossAxisAlignment.start);
  }

  Widget _tankItem2() {
    return <Widget>[
      const Text('Diameter'),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: <Widget>[
          Expanded(
            child: ComputerTextField(
                maxLength: 8,
                value: controller.text0,
                isNumber: true,
                onChange: (value) {
                  controller.text0 = value;
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'centimeter',
            style: TextStyle(color: Colors.grey),
          )
        ].toRow(),
      ).decorated(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1)),
      const SizedBox(
        height: 12,
      ),
      const Text('Height'),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: <Widget>[
          Expanded(
            child: ComputerTextField(
                maxLength: 8,
                value: controller.text1,
                isNumber: true,
                onChange: (value) {
                  controller.text1 = value;
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'centimeter',
            style: TextStyle(color: Colors.grey),
          )
        ].toRow(),
      ).decorated(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1)),
      const SizedBox(
        height: 12,
      ),
      const Text('Filled'),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: <Widget>[
          Expanded(
            child: ComputerTextField(
                maxLength: 8,
                value: controller.text2,
                isNumber: true,
                onChange: (value) {
                  controller.text2 = value;
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'centimeter',
            style: TextStyle(color: Colors.grey),
          )
        ].toRow(),
      ).decorated(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1)),
    ].toColumn(crossAxisAlignment: CrossAxisAlignment.start);
  }

  Widget _tankItem3() {
    return <Widget>[
      const Text('Length'),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: <Widget>[
          Expanded(
            child: ComputerTextField(
                maxLength: 8,
                value: controller.text0,
                isNumber: true,
                onChange: (value) {
                  controller.text0 = value;
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'centimeter',
            style: TextStyle(color: Colors.grey),
          )
        ].toRow(),
      ).decorated(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1)),
      const SizedBox(
        height: 12,
      ),
      const Text('Diameter'),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: <Widget>[
          Expanded(
            child: ComputerTextField(
                maxLength: 8,
                value: controller.text1,
                isNumber: true,
                onChange: (value) {
                  controller.text1 = value;
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'centimeter',
            style: TextStyle(color: Colors.grey),
          )
        ].toRow(),
      ).decorated(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1)),
      const SizedBox(
        height: 12,
      ),
      const Text('Filled'),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: <Widget>[
          Expanded(
            child: ComputerTextField(
                maxLength: 8,
                value: controller.text2,
                isNumber: true,
                onChange: (value) {
                  controller.text2 = value;
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'centimeter',
            style: TextStyle(color: Colors.grey),
          )
        ].toRow(),
      ).decorated(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1)),
    ].toColumn(crossAxisAlignment: CrossAxisAlignment.start);
  }

  Widget _tankItem() {
    Widget widget = const Text('');
    if (controller.type == 0) {
      widget = _tankItem0();
    } else if (controller.type == 1) {
      widget = _tankItem1();
    } else if (controller.type == 2) {
      widget = _tankItem2();
    } else if (controller.type == 3) {
      widget = _tankItem3();
    }
    return widget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tank volume calculator"),
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
            child: GetBuilder<TankVolumeLogic>(builder: (_) {
              return SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: <Widget>[
                  Wrap(spacing: 10,
                      runSpacing: 10,
                      children: [_item(0), _item(1),_item(2),_item(3)]),
                  Image.asset(
                    'assets/tank${controller.type}.webp',
                    width: double.infinity,
                    height: 179,
                    fit: BoxFit.fill,
                  ).marginSymmetric(vertical: 25),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    child: _tankItem(),
                  ).decorated(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    child: <Widget>[
                      const Text('Result'),
                      const SizedBox(
                        height: 10,
                      ),
                      <Widget>[
                        const Text('Total Tank Volume'),
                        Expanded(
                            child: Text(
                              '${controller.totalTankVolume} ${controller
                                  .resultUnit}',
                              textAlign: TextAlign.end,
                              style: TextStyle(color: primaryColor),
                            ))
                      ].toRow(),
                      const SizedBox(
                        height: 8,
                      ),
                      <Widget>[
                        const Text('Filled with'),
                        Expanded(
                            child: Text(
                              '${controller.filledWith} ${controller
                                  .resultUnit}',
                              textAlign: TextAlign.end,
                              style: TextStyle(color: primaryColor),
                            ))
                      ].toRow(),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: <Widget>[
                          Text(
                            controller.resultUnit,
                            style: const TextStyle(color: Colors.black38),
                          ),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: 25,
                              color: Colors.grey,
                            ),
                          )
                        ].toStack(alignment: Alignment.center),
                      ).decorated(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey, width: 1))
                    ].toColumn(),
                  )
                      .decorated(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12))
                      .gestures(onTap: () {
                        controller.showStyleSelect(context);
                  }),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      'Count',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                      .decorated(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(12))
                      .gestures(onTap: () {
                        controller.count();
                  })
                ].toColumn(crossAxisAlignment: CrossAxisAlignment.start),
              );
            }).marginAll(15)),
      ),
    );
  }
}

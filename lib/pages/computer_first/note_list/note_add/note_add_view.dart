import 'package:building_computer/pages/computer_first/tank_volume/computer_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../../main.dart';
import 'note_add_logic.dart';

class NoteAddPage extends GetView<NoteAddLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.entity == null ? 'Add note' : 'Edit note'),
        backgroundColor: Colors.white,
        actions: [
          Visibility(
              visible: controller.entity != null,
              child: Text(
                'Delete',
                style: TextStyle(color: primaryColor),
              ).marginOnly(right: 20).gestures(onTap: () {
                controller.delete();
              })),
          Text(
            'Commit',
            style: TextStyle(color: primaryColor),
          ).marginOnly(right: 20).gestures(onTap: () {
            controller.commit();
          })
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: <Widget>[
            Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    child: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ComputerTextField(
                            hintText: 'Title',
                            value: controller.title,
                            maxLength: 20,
                            onChange: (value) {
                              controller.title = value;
                            }),
                      ).decorated(
                          color: const Color(0xfffcfcfc),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xffd1d1d1))),
                      const SizedBox(height: 15),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8),
                        child: ComputerTextField(
                            hintText: 'Title',
                            value: controller.content,
                            maxLength: 500,
                            maxLines:8,
                            onChange: (value) {
                              controller.content = value;
                            }),
                      ).decorated(
                          color: const Color(0xfffcfcfc),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xffd1d1d1)))
                    ].toColumn())
                .decorated(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12))
          ].toColumn(),
        ).marginAll(15),
      ),
    );
  }
}

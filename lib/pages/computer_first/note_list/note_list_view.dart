import 'package:building_computer/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_widget/styled_widget.dart';

import 'note_list_logic.dart';

class NoteListPage extends GetView<NoteListLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Construction notes'),
        backgroundColor: Colors.white,
        actions: [
          Icon(
            Icons.add_circle,
            size: 30,
            color: primaryColor,
          ).marginOnly(right: 20).gestures(onTap: () {
            Get.toNamed('/note_add')?.then((_) {
              controller.getData();
            });
          })
        ],
      ),
      body: Obx(() {
        return controller.list.value.isEmpty
            ? const Center(
                child: Text('No data'),
              )
            : ListView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: controller.list.value.length,
                itemBuilder: (_, index) {
                  final entity = controller.list.value[index];
                  return Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    child: <Widget>[
                      <Widget>[
                        Expanded(child: Text(entity.title)),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          entity.createdTimeString,
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ].toRow(),
                      Divider(
                        height: 15,
                        color: Colors.grey[300],
                      ),
                      Text(
                        entity.content,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      )
                    ].toColumn(crossAxisAlignment: CrossAxisAlignment.start),
                  )
                      .decorated(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12))
                      .marginOnly(bottom: 10)
                      .gestures(onTap: () {
                    Get.toNamed('/note_add',arguments: entity)?.then((_) {
                      controller.getData();
                    });
                  });
                });
      }),
    );
  }
}

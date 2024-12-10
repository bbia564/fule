import 'package:building_computer/db_note/db_note.dart';
import 'package:building_computer/db_note/note_entity.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class NoteAddLogic extends GetxController {

  DBNote dbNote = Get.find<DBNote>();

  NoteEntity? entity = Get.arguments;

  String title = '';
  String content = '';

  void commit() async {
    if (title.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter the title');
      return;
    }
    if (content.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter the content');
      return;
    }
    if (entity == null) {
      final currentEntity = NoteEntity(
        id: 0,
        createdTime: DateTime.now(),
        title: title,
        content: content,
      );
      await dbNote.insertNote(currentEntity);
    } else {
      entity!.title = title;
      entity!.content = content;
      await dbNote.updateNote(entity!);
    }
    Get.back();
  }

  void delete() async {
    await dbNote.deleteNote(entity!);
    Get.back();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    if (entity != null) {
      title = entity!.title;
      content = entity!.content;
    }
    super.onInit();
  }

}

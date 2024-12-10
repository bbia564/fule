import 'package:building_computer/db_note/db_note.dart';
import 'package:building_computer/db_note/note_entity.dart';
import 'package:get/get.dart';

class NoteListLogic extends GetxController {

  DBNote dbNote = Get.find<DBNote>();

  var list = <NoteEntity>[].obs;

  void getData() async {
    list.value = await dbNote.getNoteAllData();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getData();
    super.onInit();
  }

}

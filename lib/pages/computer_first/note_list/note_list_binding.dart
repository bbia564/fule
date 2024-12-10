import 'package:get/get.dart';

import 'note_list_logic.dart';

class NoteListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoteListLogic());
  }
}

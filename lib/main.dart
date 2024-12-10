import 'package:building_computer/db_note/db_note.dart';
import 'package:building_computer/pages/computer_first/computer_first_binding.dart';
import 'package:building_computer/pages/computer_first/computer_first_view.dart';
import 'package:building_computer/pages/computer_first/level/level_binding.dart';
import 'package:building_computer/pages/computer_first/level/level_view.dart';
import 'package:building_computer/pages/computer_first/note_list/note_add/note_add_binding.dart';
import 'package:building_computer/pages/computer_first/note_list/note_add/note_add_view.dart';
import 'package:building_computer/pages/computer_first/note_list/note_list_binding.dart';
import 'package:building_computer/pages/computer_first/note_list/note_list_view.dart';
import 'package:building_computer/pages/computer_first/ruler/ruler_binding.dart';
import 'package:building_computer/pages/computer_first/ruler/ruler_view.dart';
import 'package:building_computer/pages/computer_first/tank_volume/tank_volume_binding.dart';
import 'package:building_computer/pages/computer_first/tank_volume/tank_volume_view.dart';
import 'package:building_computer/pages/computer_second/computer_second_binding.dart';
import 'package:building_computer/pages/computer_second/computer_second_view.dart';
import 'package:building_computer/pages/computer_tab/computer_tab_binding.dart';
import 'package:building_computer/pages/computer_tab/computer_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Color primaryColor = const Color(0xff4f52ff);
Color bgColor = const Color(0xfff8f8f8);

List<String> tankVolumes = ['Cone top','Truncated cone (funnel)','Vertical cylinder','Horizontal cylinder'];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => DBNote().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: Fules,
      initialRoute: '/computer_tab',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        colorScheme: ColorScheme.light(
          primary: primaryColor,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryColor,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        cardTheme: const CardTheme(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        dialogTheme: const DialogTheme(
          actionsPadding: EdgeInsets.only(right: 10, bottom: 5),
        ),
        dividerTheme: DividerThemeData(
          thickness: 1,
          color: Colors.grey[200],
        ),
      ),
    );
  }
}
List<GetPage<dynamic>> Fules = [
  GetPage(name: '/computer_tab', page: () => ComputerTabPage(), binding: ComputerTabBinding()),
  GetPage(name: '/computer_first', page: () => ComputerFirstPage(), binding: ComputerFirstBinding()),
  GetPage(name: '/computer_second', page: () => ComputerSecondPage(), binding: ComputerSecondBinding()),
  GetPage(name: '/tank_volume', page: () => TankVolumePage(), binding: TankVolumeBinding()),
  GetPage(name: '/ruler', page: () => RulerPage(), binding: RulerBinding()),
  GetPage(name: '/note_list', page: () => NoteListPage(), binding: NoteListBinding()),
  GetPage(name: '/note_add', page: () => NoteAddPage(), binding: NoteAddBinding()),
  GetPage(name: '/level', page: () => LevelPage(), binding: LevelBinding()),
];

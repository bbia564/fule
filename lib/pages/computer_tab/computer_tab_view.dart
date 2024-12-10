import 'package:building_computer/pages/computer_first/computer_first_view.dart';
import 'package:building_computer/pages/computer_second/computer_second_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../main.dart';
import 'computer_tab_logic.dart';

class ComputerTabPage extends GetView<ComputerTabLogic> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: [
          ComputerFirstPage(),
          ComputerSecondPage()
        ],
      ),
      bottomNavigationBar: Obx(()=>_navCoBars()),
    );
  }

  Widget _navCoBars() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled,color: Colors.grey.withOpacity(0.6)),
          activeIcon:Icon(Icons.home_filled,color: primaryColor),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings,color: Colors.grey.withOpacity(0.6)),
          activeIcon:Icon(Icons.settings,color: primaryColor),
          label: 'Setting',
        ),
      ],
      currentIndex: controller.currentIndex.value,
      onTap: (index) {
        controller.currentIndex.value = index;
        controller.pageController.jumpToPage(index);
      },
    );
  }
}

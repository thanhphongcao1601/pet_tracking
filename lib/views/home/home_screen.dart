import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pet_tracking/utils/contants/app_colors.dart';
import 'package:pet_tracking/views/home/home_controller.dart';
import 'package:pet_tracking/widgets/pet_dashboard.dart';
import 'package:pet_tracking/widgets/squares_icon_button.dart';
import 'package:pet_tracking/widgets/title_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      backgroundColor: AppColor.appBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Pet Tracking',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SquaresIconButton(
                      fontAwesomeIconsName: FontAwesomeIcons.magnifyingGlass,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        const SizedBox(
                          width: 60,
                        ),
                        const Align(
                          alignment: Alignment.center,
                          child: SquaresIconButton(
                            fontAwesomeIconsName: FontAwesomeIcons.bell,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                            alignment: Alignment.center,
                            height: 24,
                            width: 24,
                            child: const Text(
                              '10',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Good morning!\nGrab your beauty product',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Obx(() => SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TitleButton(
                          index: 0,
                          title: 'Body',
                          isSelected:
                              homeController.selectedTitleIndex.value == 0,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TitleButton(
                          index: 1,
                          title: 'Face',
                          isSelected:
                              homeController.selectedTitleIndex.value == 1,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TitleButton(
                          index: 2,
                          title: 'Hair',
                          isSelected:
                              homeController.selectedTitleIndex.value == 2,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TitleButton(
                          title: 'Nail',
                          index: 3,
                          isSelected:
                              homeController.selectedTitleIndex.value == 3,
                        ),
                      ],
                    ),
                  )),
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      PetDashboard(),
                      SizedBox(
                        height: 15,
                      ),
                      PetDashboard(),
                      SizedBox(
                        height: 15,
                      ),
                      PetDashboard(),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Obx(() => BottomNavigationBar(
      //       iconSize: 30,
      //       unselectedItemColor: Colors.grey,
      //       showSelectedLabels: false, // <-- HERE
      //       showUnselectedLabels: false,
      //       items: const <BottomNavigationBarItem>[
      //         BottomNavigationBarItem(
      //           label: '',
      //           icon: Icon(Icons.history),
      //         ),
      //         BottomNavigationBarItem(
      //           label: '',
      //           icon: Icon(Icons.home),
      //         ),
      //         BottomNavigationBarItem(
      //           label: '',
      //           icon: Icon(Icons.settings),
      //         ),
      //         BottomNavigationBarItem(
      //           label: '',
      //           icon: Icon(Icons.abc),
      //         ),
      //       ],
      //       currentIndex: appController.selectedIndex.value,
      //       selectedItemColor: AppColor.appMainColor,
      //       onTap: (int index) => appController.updateSelectedIndex(index),
      //     )),
    );
  }
}

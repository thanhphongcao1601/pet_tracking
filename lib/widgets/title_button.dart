import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_tracking/utils/contants/app_colors.dart';
import 'package:pet_tracking/views/home/home_controller.dart';

// ignore: must_be_immutable
class TitleButton extends StatelessWidget {
  String title;
  bool isSelected;
  int index;

  TitleButton(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.index});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    if (isSelected == false) {
      return GestureDetector(
        onTap: () => homeController.updateSelectedTitleIndex(index),
        child: Container(
          margin: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          height: 50,
          child: Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () => homeController.updateSelectedTitleIndex(index),
      child: Container(
        margin: const EdgeInsets.all(3),
        decoration: const BoxDecoration(
          color: AppColor.appMainColor,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.5),
          //     spreadRadius: 2,
          //     blurRadius: 2,
          //     // offset: const Offset(0, 3), // changes position of shadow
          //   ),
          // ],
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        height: 50,
        child: Text(
          title,
          style: const TextStyle(fontSize: 20, color: AppColor.white),
        ),
      ),
    );
  }
}

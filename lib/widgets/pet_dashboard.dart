import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_tracking/utils/contants/app_colors.dart';

class PetDashboard extends StatelessWidget {
  const PetDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 2,
          // offset: const Offset(0, 3), // changes position of shadow
        ),
      ], color: AppColor.appMainColor, borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.all(10),
      width: Get.width,
      height: Get.width / 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: Get.width / 2 - 50,
            // child: Image.asset('assets/images/cat.png')
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Huỳnh Xám',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColor.white),
              ),
              Text(
                '8 tháng',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColor.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}

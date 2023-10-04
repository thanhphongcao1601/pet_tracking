import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedTitleIndex = 0.obs;

  void updateSelectedTitleIndex(int index) {
    selectedTitleIndex.value = index;
    print(index);
  }
}

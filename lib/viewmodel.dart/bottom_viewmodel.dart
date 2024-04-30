import 'package:flutter/widgets.dart';
import 'package:fyp/views/home_view.dart';
import 'package:fyp/views/login_view.dart';
import 'package:fyp/views/patient_view.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class BottomController extends GetxController {
  RxInt currentTab = 0.obs;
  final List<Widget> screens = [HomeView(), const LoginView(),const PatientView()];
  late Rx<Widget> currentScreen;

  @override
  void onInit() {
    super.onInit();
    currentScreen = screens[currentTab.value].obs;
  }

  void changeScreen(int index) {
    currentScreen.value = screens[index];
    currentTab.value = index;
  }
}

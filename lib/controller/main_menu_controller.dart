import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:pas_fluttah/menu/feat.dart';
import 'package:pas_fluttah/menu/home.dart';
import 'package:pas_fluttah/menu/profile.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [Home(), Feat(), Profile()]; 
}
import 'package:get/get.dart';
import 'package:pas_fluttah/menu/home.dart';
import 'package:pas_fluttah/pages/login_page.dart';
import 'package:pas_fluttah/pages/main_menu_page.dart';
import 'package:pas_fluttah/pages/transaction_page.dart';

class Routes {
  static const String login = "/login";
  static const String home = "/home";
  static const String mainMenu = "/mainMenu;";
  static const String transactionPage = "/transactionPage;";

  static final pages = [
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: home, page: () => Home()),
    GetPage(name: mainMenu, page: () => MainMenuPage()),
    GetPage(name: transactionPage, page: () => TransactionPage())
  ];
}
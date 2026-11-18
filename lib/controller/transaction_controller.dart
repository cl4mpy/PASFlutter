import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/parse_route.dart';

class TransactionController extends GetxController {
  late String namaProduk;
  late String harga;
  late String description;
  late Image productImage;
  late String reviews;
  late String rating;
  late String seller;
  late TextEditingController txtJml;
  late TextEditingController txtHarga;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaProduk = arguments['name'];
    harga = arguments['harga'];
    description = arguments['description'];
    productImage = arguments['img'];
    reviews = arguments['reviews'];
    rating = arguments['rating'];
    seller = arguments['seller'];
  }

  void Hitung() {

  }
}
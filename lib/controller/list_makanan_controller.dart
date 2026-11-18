import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_fluttah/model/makanan_model.dart';

class ListMakananController extends GetxController {
  final List<MakananModel> initialProducts = [
    MakananModel(
      namaProduk: "Nasi Goreng Spesial",
      harga: "Rp. 25.000",
      description:
          "Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk.",
      productImage: Image.network(
        "https://tse3.mm.bing.net/th/id/OIP.LKcXbDmkdl-ACH71PXJs_QHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
        fit: BoxFit.cover,
      ),
      reviews: "1.284 Reviews",
      rating: "4.8",
      seller: "Samsung Official Store",
    ),
    MakananModel(
      namaProduk: "Ayam Bakar Madu",
      harga: "Rp. 30.000",
      description:
          "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.",
      productImage: Image.network(
        "https://cdn0-production-images-kly.akamaized.net/M63Fm-0RE7Kup8ELu__IRAFJr-U=/0x0:3000x1691/1200x675/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3910470/original/073110400_1642740733-shutterstock_1854744190.jpg",
        fit: BoxFit.cover,
      ),
      reviews: "2.431 Reviews",
      rating: "4.9",
      seller: "Apple Official Store",
    ),
    MakananModel(
      namaProduk: "Sate Ayam Madura",
      harga: "Rp. 28.000",
      description:
          "10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.",
      productImage: Image.network(
        "https://tse4.mm.bing.net/th/id/OIP.eFq7Aw4SFhcfiOSpmU_8IwHaE8?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
        fit: BoxFit.cover,
      ),
      reviews: "876 Reviews",
      rating: "4.7",
      seller: "ASUS ROG Official",
    ),
    MakananModel(
      namaProduk: "Mie Ayam Bakso",
      harga: "Rp. 20.000",
      description:
          "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",
      productImage: Image.network(
        "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/131/2024/04/14/Mie-Ayam-Bakso-4188967849.jpg",
        fit: BoxFit.cover,
      ),
      reviews: "542 Reviews",
      rating: "4.6",
      seller: "MyKonos Official",
    ),
    MakananModel(
      namaProduk: "Es Teh Manis Jumbo",
      harga: "Rp. 8.000",
      description:
          "Minuman teh melati segar dengan gula asli dan es batu kristal.",
      productImage: Image.network(
        "https://officialmykonos.com/cdn/shop/files/empire100ml1.jpg?v=1775736295&width=620",
        fit: BoxFit.cover,
      ),
      reviews: "328 Reviews",
      rating: "4.8",
      seller: "MyKonos Official",
    ),
  ];

  // Daftar produk yang ditampilkan di halaman.
  final RxList<MakananModel> listProduct = <MakananModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    // Isi daftar dengan data awal ketika controller dibuat.
    listProduct.assignAll(initialProducts);
  }

  // Mengembalikan produk yang dihapus saat pull-to-refresh.
  Future<void> refreshProducts() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );

    listProduct.assignAll(initialProducts);
  }
}

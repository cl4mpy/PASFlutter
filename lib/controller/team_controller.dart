import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class TeamController extends GetxController {
  var isLoading = false.obs;

  var productModel = Rxn<ProductModel2>();

  final RxList<Product> listProduct = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  // Fetch API
  Future<void> fetchProducts() async {
    try {
      isLoading.value = true;

      final url = Uri.parse(
        "https://dummyjson.com/products?limit=10",
      );

      final response = await http.get(url);

      if (response.statusCode == 200) {
        productModel.value = productModel2FromJson(response.body);

        listProduct.assignAll(
          productModel.value!.products,
        );
      } else {
        Get.snackbar("Gagal", "Failed to connect to API!");
      }
    } catch (e) {
      Get.snackbar("Gagal", e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  // Refresh API
  Future<void> refreshProducts() async {
    await fetchProducts();
  }

  // Delete Product
  void deleteProduct(int index) {
    listProduct.removeAt(index);
  }
}
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_fluttah/model/team_model.dart';

class TeamController extends GetxController {
  var isLoading = false.obs;

  var teamModel = Rxn<PremierLeagueModel>();

  final RxList<PremierLeagueModel> listProduct = <PremierLeagueModel>[].obs;

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
        "https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php? l=English%20Premier%20League",
      );

      final response = await http.get(url);

      if (response.statusCode == 200) {
        teamModel.value = premierLeagueModelFromJson(response.body);

        listProduct.assignAll(
          teamModel.value!.teams,
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
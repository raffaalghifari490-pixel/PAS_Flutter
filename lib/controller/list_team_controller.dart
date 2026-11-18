import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_flutter/model/team_model.dart';

class ListTeamController extends GetxController {
  RxList<PremierLeagueModel> listTeam = <PremierLeagueModel>[].obs;

   var isLoading = false.obs;

  Future<void> getListTeam() async {
    try {
      isLoading.value = true;
      final url = Uri.parse(" https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php? l=English%20Premier%20League");

      final response = await http.get(url);

      if (response.statusCode == 200) {
        listTeam.value = premierLeagueModelFromJson(response.body);
      } else {
        Get.snackbar(
          "Gagal",
          "Gagal mengambil data tim",
        );
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("gagal", e.toString());
      print("error nya " + e.toString());
    }
    
    @override
    void onInit() {
    super.onInit();
    getListTeam();
    }

    // Refresh data
  Future<void> refreshProduk() async {  
    await getProduk();
  }
  }
}
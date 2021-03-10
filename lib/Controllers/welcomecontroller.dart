
import 'package:flutter_app/Models/Welcome.dart';
import 'package:flutter_app/services/remoteservices1.dart';
import 'package:get/state_manager.dart';




class WelcomeController extends GetxController {
  var isLoading = true.obs;
  var welcomeList = List<Welcome>().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var welcome = await RemoteServices1.fetchProducts();
      if (welcome != null) {
        welcomeList.value = welcome;
      }
    } finally {
      isLoading(false);
    }
  }
}
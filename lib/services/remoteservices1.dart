
import 'package:flutter_app/Models/Welcome.dart';
import 'package:http/http.dart' as http;



class RemoteServices1 {
  static var client = http.Client();

  static Future<List<Welcome>> fetchProducts() async {
    var response = await client.get(
        'http://cookbookrecipes.in/test.php');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return welcomeFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}
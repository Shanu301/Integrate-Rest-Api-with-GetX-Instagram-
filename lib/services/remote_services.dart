import 'package:flutter_app/Models/Empty.dart';
import 'package:http/http.dart' as http;



class RemoteServices {
  static var client = http.Client();

  static Future<List<Empty>> fetchProducts() async {
    var response = await client.get(
        'https://hiit.ria.rocks/videos_api/cdn/com.rstream.crafts?versionCode=40&lurl=Canvas%20painting%20ideas');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return emptyFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}
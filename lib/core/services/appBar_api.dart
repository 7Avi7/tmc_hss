import 'package:http/http.dart' as http;
import 'package:tmc_hss/core/models/appbar_models.dart';

class AppBarAPI {
  Future<AppBarModel> fetchAppBarData() async {
    final response = await http.get(
      Uri.parse('http://192.168.60.35:1337/api/navbarmenus?populate=deep,10'),
    );

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON
      return appBarModelFromJson(response.body);
    } else {
      // If the server did not return a 200 OK response, throw an exception.
      throw Exception('Failed to load app bar data');
    }
  }
}

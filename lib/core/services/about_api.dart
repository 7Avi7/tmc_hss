import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tmc_hss/core/models/about_models.dart';

class AboutAPI {
  Future<AboutModel> getAboutAPI() async {
    http.Response response;

    response = await http.get(
      Uri.parse('http://192.168.60.35:1337/api/about-uses?populate=*'),
    );

    AboutModel aboutList = aboutModelFromJson(response.body);

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    return aboutList;
  }
}

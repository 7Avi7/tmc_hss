import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tmc_hss/core/models/services_models.dart';

class ServicesAPI {
  String url = "http://192.168.60.35:1337/api/homes";

  Future<ServicesModel> getServicesAPI() async {
    http.Response response;

    response = await http.get(
      Uri.parse('http://192.168.60.35:1337/api/homes'),
    );

    ServicesModel servicesList = servicesModelFromJson(response.body);

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    return servicesList;
  }
}

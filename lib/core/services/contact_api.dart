import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart'; // Changed from 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ContactAPI {
  String url = 'http://192.168.60.35:1337/api/contacts';

  Future<int?> getContactAPI(
    String name,
    String email,
    String subject,
    String message,
  ) async {
    try {
      http.Response response = await http.post(
        Uri.parse('http://192.168.60.35:1337/api/contacts'),
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
        body: jsonEncode({
          "data": {
            "Name": name,
            "Email": email,
            "Subject": subject,
            "Message": message
          }
        }),
      );

      debugPrint(response.statusCode.toString());
      debugPrint(response.body);
      debugPrint(name);
      debugPrint(email);
      debugPrint(subject);
      debugPrint(message);

      if (response.statusCode == 200) {
        return response.statusCode;
      } else {
        throw Exception('Failed to send message: ${response.statusCode}');
      }
    } catch (error) {
      debugPrint('Error: $error');
      return null; // Returning null in case of error
    }
  }
}

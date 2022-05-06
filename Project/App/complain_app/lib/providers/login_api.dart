import 'dart:convert';

import '../models/Login.dart';
import 'package:http/http.dart' as http;

Future<Login> fetchLogin() async {
  final response = await http
      .get(Uri.parse('https://mysqldbcms.000webhostapp.com/getData.php'));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Login.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load');
  }
}

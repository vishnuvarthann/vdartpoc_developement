import 'dart:convert';

import 'package:vdartpoc/EnvUrl/env.dart';
import 'package:vdartpoc/Model/newsapi.dart';
import 'dart:async';

import 'package:http/http.dart' as http;

class TodoService {
  Future<List<Map<String, dynamic>>> fetchData() async {
    http.Response response =
        await http.get(Uri.parse(EnvironmentConstant.BASE_URL));
    if (response.statusCode == 200) {
      print("responsevalue:" + response.body);
      print("Response code after service " + response.statusCode.toString());

      return List<Map<String, dynamic>>.from(
          json.decode(response.body)['articles']);
      // return listData;
    } else {
      throw Exception('Failed to load todos');
    }
  }
}

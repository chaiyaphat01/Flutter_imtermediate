import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_api/utils/constant.dart';

class CallAPI {
  _setHeader() => <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      };
  postData(data, apiURL) async {
    var fullURL = Uri.parse(baseURLApi + apiURL);
    var response =
        await http.post(fullURL, body: jsonEncode(data), headers: _setHeader());
    // print(res.statusCode);
    if ((response.statusCode == 200)) {
      print("Login success!");
      return response.body;
    } else {
      print("Login fail!");
      return response.statusCode;
    }
    ; //retuen true false
    // return (response.body);
  }
}

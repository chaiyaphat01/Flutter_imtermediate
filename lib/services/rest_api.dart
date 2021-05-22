import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_api/utils/constant.dart';
import 'package:flutter_api/models/product.dart';

class CallAPI {
  _setHeader() => <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      };
  //Login
  postData(data, apiURL) async {
    try {
      var fullURL = Uri.parse(baseURLApi + apiURL);
      var response = await http.post(fullURL,
          body: jsonEncode(data), headers: _setHeader());
      if ((response.statusCode == 200)) {
        print('Login success');
        return jsonDecode(response.body);
      } else {
        print('Login fail');
        return jsonDecode(response.body);
      }
    } catch (e) {
      print("error");
      print(e);
    }
  }

  // CRUD product
  //Gat All product
  //Future หมายถึง return data แบบไม่ติด await  โดย return เป็น List โดย List นั้นมีโครงสร้างจาก model Product
  Future<List<Product>> getProduct() async {
    var fullURL = Uri.parse(baseURLApi + "products");
    final response = await http.get(fullURL, headers: _setHeader());
    if (response.statusCode == 200) {
      return productFromJson(response.body);  //รูปแบบการ return
    } else {
      return null;
    }
  }

  //Create product
  //รับ paramert product
  Future<bool> createProduct(Product data) async {
    var fullURL = Uri.parse(baseURLApi + "products");
    final response = await http.put(fullURL, headers: _setHeader(),body:data );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  //Update
  Future<bool> updateProduct(Product data) async {
    var fullURL = Uri.parse(baseURLApi + "products/${data.id}");
    final response = await http.put(fullURL, headers: _setHeader(),body:data );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

//Update
  Future<bool> daleteProduct(int id) async {
    var fullURL = Uri.parse(baseURLApi + "products/${id}");
    final response = await http.delete(fullURL, headers: _setHeader(),body:id );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}

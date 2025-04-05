import 'dart:convert';
import 'package:fitzone/model/example.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ItemProvider with ChangeNotifier {
  List items = [];
 

  List get iitems => items;
  

  Future<void> fetchItems() async {
    
    notifyListeners();

    try {
      final response = await http.get(
        Uri.parse("https://appy.trycatchtech.com/v3/fit_zone/food_list"),
      );

      if (response.statusCode == 200) {
        final List data = jsonDecode(response.body);
        items = data.map((json)=>Example.fromJson(json)).toList();
        
      } 
    } catch (error) {
      print('Error: $error');
    }  
      notifyListeners();
     
  }
}

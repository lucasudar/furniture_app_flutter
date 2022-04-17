import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/Categories.dart';

Future<List<Category>> fetchProducts() async {
  const String apiUrl = "https://5f210aa9daa42f001666535e.mockapi.io/api/products";
  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    List<Category> categories = (json.decode(response.body) as List)
        .map((data) => Category.fromJson(data))
        .toList();
    return categories;
  } else {
    throw Exception('Failed to load products');
  }
}
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nepal_palse/core/models/news_model.dart';

class ApiService {
  static const String _apiKey = "";
  static const String _baseUrl = "https://newsapi.org/v2/top-headlines";
  static const String _country = "Nepal";

  Future<List<NewsModel>> fetchNews() async {
    final response = await http.get(
      Uri.parse("$_baseUrl?country=$_country&apiKey=$_apiKey"),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      List articles = data['articles'];
      return articles.map((article) => NewsModel.fromJson(article)).toList();
    } else {
      throw Exception("Failed to load news");
    }
  }
}

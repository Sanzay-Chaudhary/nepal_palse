import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nepal_palse/core/models/news_model.dart';

class NewsService {
  static const String _apiKey = "45eb4e3459184faaa46ac9e1d74dd508";
  static const String _baseUrl =
      "https://newsapi.org/v2/everything?q=tesla&from=2025-03-03&sortBy=publishedAt";
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

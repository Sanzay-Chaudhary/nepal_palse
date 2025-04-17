import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/news_model.dart';

class NewsProvider extends ChangeNotifier {
  List<NewsModel> _newsList = [];
  bool _isLoading = true;

  List<NewsModel> get newsList => _newsList;
  bool get isLoading => _isLoading;

  static const String _apiKey = "45eb4e3459184faaa46ac9e1d74dd508";
  static const String _baseUrl =
      "https://newsapi.org/v2/everything?q=tesla&from=2025-03-03&sortBy=publishedAt";

  Future<void> fetchNews() async {
    _isLoading = true;
    notifyListeners();

    final response = await http.get(Uri.parse('$_baseUrl&apiKey=$_apiKey'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List articles = data['articles'];
      _newsList = articles.map((e) => NewsModel.fromJson(e)).toList();
    }

    _isLoading = false;
    notifyListeners();
  }
}

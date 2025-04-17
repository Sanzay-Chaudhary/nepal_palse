import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/news_model.dart';

class NewsProvider extends ChangeNotifier {
  List<NewsModel> _newsList = [];
  bool _isLoading = true;

  List<NewsModel> get newsList => _newsList;
  bool get isLoading => _isLoading;

  Future<void> fetchNews() async {
    _isLoading = true;
    notifyListeners();

    final response = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=us&apiKey=YOUR_API_KEY'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List articles = data['articles'];
      _newsList = articles.map((e) => NewsModel.fromJson(e)).toList();
    }

    _isLoading = false;
    notifyListeners();
  }
}

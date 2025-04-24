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

    try {
      final response = await http.get(
        Uri.parse(
          'https://newsapi.org/v2/everything?q=Apple&sortBy=popularity&apiKey=acdd888fb9a04411a7d398280eed1054',
        ),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        print(data);
        final List articles = data['articles'];
        _newsList = articles.map((e) => NewsModel.fromJson(e)).toList();
      } else {
        print('Error fetching news: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching news: $e');
    }

    _isLoading = false;
    notifyListeners();
  }
}

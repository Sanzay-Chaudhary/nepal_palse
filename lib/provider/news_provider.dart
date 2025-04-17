import 'package:flutter/material.dart';
import 'package:nepal_palse/core/models/news_model.dart';
import 'package:nepal_palse/services/news_service.dart';

class NewsProvider with ChangeNotifier {
  final NewsService _newsService = NewsService();
  List<NewsModel> _news = [];
  bool _isLoading = false;

  List<NewsModel> getNews = _news;
  bool get isLoading = _isLoading;

  Future<void> loadNews() async {
    _isLoading = true;
    notifyListeners();
    try {
      _news = await _newsService.fetchNews();
    } catch (e) {
      print('Error fetching news: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}

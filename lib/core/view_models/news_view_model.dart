import 'package:flutter/material.dart';
import 'package:nepal_palse/services/api_service.dart';
import '../models/news_model.dart';

class NewsViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService();
  List<NewsModel> newsList = [];
  bool isLoading = true;

  Future<void> getNews() async {
    try {
      newsList = await _apiService.fetchNews();
    } catch (e) {
      print("Error fetching news: $e");
    }
    isLoading = false;
  }
}

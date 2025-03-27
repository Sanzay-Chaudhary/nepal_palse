import 'package:flutter/material.dart';

class NewsModel extends ChangeNotifier {
  final List<NewsModel> _newsList = [
    NewsModel(
      title: "Breaking News: Something Big Happened!",
      description: "Here’s a short description of the news article.",
      imageUrl: "https://source.unsplash.com/random/800x600",
    ),
    NewsModel(
      title: "Tech Update: New Gadgets Released",
      description: "Latest technology updates from the industry.",
      imageUrl: "https://source.unsplash.com/random/801x601",
    ),
  ];

  List<NewsModel> get newsList => _newsList;
}

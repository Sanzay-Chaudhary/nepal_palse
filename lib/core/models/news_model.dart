import 'package:flutter/material.dart';

class NewsModel {
  final String title;
  final String description;
  final String imgUrl;

  NewsModel({
    required this.title,
    required this.description,
    required this.imgUrl,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json["title"] ?? "no title",
      description: json["descrioption"] ?? "no descrioption",
      imgUrl: json["imgUrl"] ?? "https://source.unsplash.com/random/800x600",
    );
  }
}

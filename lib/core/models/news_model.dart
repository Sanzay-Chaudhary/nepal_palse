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
    String defaultImage =
        "https://imgs.search.brave.com/WpB4nWbYXOjpaiVR_ovq7PVdzyTezA8oWAyJh_VSjjw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTIw/MjU1MDEwMC9waG90/by9icmVha2luZy1u/ZXdzLXJlcG9ydGVy/LXJlcG9ydGluZy1v/bi1jb3JvbmF2aXJ1/cy1mcm9tLWNoaW5h/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz1ON0oydGZuZUFv/bTQ0TmdXWHJhdnJC/dnZLZnZEdUxGc2RN/V2NqZzJ0WVlzPQ";
    return NewsModel(
      title: json["title"] ?? "no title",

      description: json["description"] ?? "No Description Available",

      imgUrl:
          (json["urlToImage"] == null || json["urlToImage"] == "")
              ? defaultImage
              : json["urlToImage"],
    );
  }
}

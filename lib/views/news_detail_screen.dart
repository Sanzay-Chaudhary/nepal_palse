import 'package:flutter/material.dart';
import 'package:nepal_palse/core/models/news_model.dart';

class NewsDetailScreen extends StatefulWidget {
  final NewsModel news;
  const NewsDetailScreen({super.key, required this.news});

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.news.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              widget.news.imgUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                widget.news.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                widget.news.description,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

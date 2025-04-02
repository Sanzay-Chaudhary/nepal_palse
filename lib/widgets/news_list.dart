import 'package:flutter/material.dart';
import 'package:nepal_palse/core/models/news_model.dart';
import 'news_card.dart';

class NewsList extends StatefulWidget {
  final List<NewsModel> newsList;

  const NewsList({super.key, required this.newsList});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.newsList.length,
      itemBuilder: (context, index) {
        return NewsCard(news: widget.newsList[index]);
      },
    );
  }
}

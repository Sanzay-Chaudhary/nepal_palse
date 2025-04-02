import 'package:flutter/material.dart';
import 'package:nepal_palse/core/models/news_model.dart';
import 'package:nepal_palse/views/news_detail_screen.dart';

class NewsCard extends StatefulWidget {
  final NewsModel news;
  const NewsCard({super.key, required this.news});

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetailScreen(news: widget.news),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.network(
                widget.news.imgUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.news.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                widget.news.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

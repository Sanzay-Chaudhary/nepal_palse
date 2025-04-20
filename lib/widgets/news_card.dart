import 'package:flutter/material.dart';
import 'package:nepal_palse/core/models/news_model.dart';

class NewsTile extends StatelessWidget {
  final NewsModel news;

  const NewsTile({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8.0),
        leading:
            news.imgUrl.isNotEmpty
                ? Image.network(
                  news.imgUrl,
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                )
                : null,
        title: Text(
          news.title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          news.description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        onTap: () {
          print('Navigating to: ${news.url}');
        },
      ),
    );
  }
}

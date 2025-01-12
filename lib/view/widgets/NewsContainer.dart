import 'package:flutter/material.dart';

class Newscontainer extends StatelessWidget {
  final String imgUrl;
  final String newsHead;
  final String newsDes;
  final String newsUrl;

  const Newscontainer({
    super.key,
    required this.imgUrl,
    required this.newsHead,
    required this.newsDes,
    required this.newsUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // News Image
          Expanded(
            flex: 3,
            child: Image.network(
              imgUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          // News Headline
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              newsHead,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          // News Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              newsDes,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 10),
          // Read More Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
              onPressed: () {
                print("Opening: $newsUrl");
              },
              child: const Text("Read More"),
            ),
          ),
        ],
      ),
    );
  }
}

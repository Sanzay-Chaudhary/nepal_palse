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
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // News Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              imgUrl,
              height: 300, // Adjust the height as needed
              width: double.infinity,
              fit: BoxFit.contain, // Ensures the full image is shown
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.broken_image,
                size: 50,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 20),
          // News Headline
          Text(
            newsHead,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          // News Description
          Text(
            newsDes,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 12),
          // Read More Button
          ElevatedButton(
            onPressed: () {
              print("Opening: $newsUrl");
            },
            child: const Text("Read More"),
          ),
        ],
      ),
    );
  }
}

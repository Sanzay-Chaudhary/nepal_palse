// import 'package:flutter/material.dart';
// import 'package:nepal_palse/core/models/news_model.dart';

// class NewsTile extends StatefulWidget {
//   final NewsModel news;

//   const NewsTile({super.key, required this.news});

//   @override
//   State<NewsTile> createState() => _NewsTileState();
// }

// class _NewsTileState extends State<NewsTile> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.all(12),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.network(
//             widget.news.imgUrl,
//             height: 200,
//             width: double.infinity,
//             fit: BoxFit.cover,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               widget.news.title,
//               style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(widget.news.description),
//           ),
//         ],
//       ),
//     );
//   }
// }
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
            news.imgUrl != null
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
          // You can handle navigation here if you want to open the full article.
          print('Navigating to: ${news.url}');
        },
      ),
    );
  }
}

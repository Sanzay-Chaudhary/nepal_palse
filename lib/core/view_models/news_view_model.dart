import '../models/news_model.dart';

class NewsViewModel {
  List<NewsModel> getNews() {
    return [
      NewsModel(
        title: "Breaking News: Something Big Happened!",
        description: "Here’s a short description of the news article.",
        imgUrl: "https://source.unsplash.com/random/800x600",
      ),
      NewsModel(
        title: "Tech Update: New Gadgets Released",
        description: "Latest technology updates from the industry.",
        imgUrl: "data:image/jpeg;base64,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",
      ),
    ];
  }
}

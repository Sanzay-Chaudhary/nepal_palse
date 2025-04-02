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
        imgUrl: "https://source.unsplash.com/random/801x601",
      ),
    ];
  }
}

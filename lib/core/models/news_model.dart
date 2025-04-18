
class NewsModel {
  final String title;
  final String description;
  final String imgUrl;
  final String url;

  NewsModel({
    required this.title,
    required this.description,
    required this.imgUrl,
    required this.url,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'] ?? 'No title',
      description: json['description'] ?? 'No description available',
      imgUrl: json['urlToImage'] ??
          'https://images.unsplash.com/photo-1485115905815-74a5c9fda2f5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YnJlYWtpbmclMjBuZXdzfGVufDB8fDB8fHww',
      url: json['url'] ?? '',
    );
  }
}

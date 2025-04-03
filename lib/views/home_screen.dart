import 'package:flutter/material.dart';
import 'package:nepal_palse/core/view_models/news_view_model.dart';
import 'package:nepal_palse/widgets/news_list.dart';
// import 'package:nepal_palse/core/view_models/news_viewmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final NewsViewModel newsViewModel = NewsViewModel();

  @override
  void initState() {
    super.initState();
    fetchNewsData();
  }

  void fetchNewsData() async {
    await newsViewModel.getNews();
    setState(() {}); // Update UI after fetching news
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nepal Pulse")),
      body:
          newsViewModel.isLoading
              ? const Center(child: CircularProgressIndicator())
              : NewsList(newsList: newsViewModel.newsList),
    );
  }
}

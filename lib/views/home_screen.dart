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
  @override
  Widget build(BuildContext context) {
    final newsViewModel = NewsViewModel();
    final newsList = newsViewModel.getNews();
    return Scaffold(
      appBar: AppBar(title: const Text('Nepal Pulse')),
      body: NewsList(newsList: newsList),
    );
  }
}

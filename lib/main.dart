import 'package:flutter/material.dart';
import 'package:nepal_palse/core/view_models/news_provider.dart';
import 'package:provider/provider.dart';
import 'views/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => NewsProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

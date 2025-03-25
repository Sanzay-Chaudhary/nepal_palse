import 'package:flutter/material.dart';
import 'package:nepal_palse/view/home_screen.dart';
import 'package:nepal_palse/view_model/news_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NewsProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nepal Pulse',
        theme: ThemeData(primarySwatch: Colors.red),
        home: HomeScreen(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Center(
            child: Text("Page No. $index"),
          );
        },
      ),
    );
  }
}

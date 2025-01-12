import 'package:flutter/material.dart';
import 'package:nepal_palse/view/widgets/NewsContainer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Newscontainer(
              imgUrl:
                  "https://images.unsplash.com/photo-1552012086-18eece80a2d9?q=80&w=1366&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              newsHead: "Breaking News",
              newsDes: "It's a breaking news",
              newsUrl: "https://thehimalayantimes.com/");
        },
      ),
    );
  }
}

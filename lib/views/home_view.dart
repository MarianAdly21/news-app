import 'package:flutter/material.dart';
import 'package:news_app/views/category_list_view.dart';
import 'package:news_app/widgets/category_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: RichText(
            text: const TextSpan(
                text: 'News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Cloud',
                    style: TextStyle(color: Colors.orange),
                  )
                ]),
          )),
      body: const CategoryListView(),
    );
  }
}

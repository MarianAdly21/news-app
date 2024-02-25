import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/service/news_service.dart';
import 'package:news_app/widgets/news-list-view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService().getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : NewsListView(
            articles: articles,
          );
  }
}

import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getNews() async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=12e9a0682ecf4e5d94aa2a7d4719e0cb&category=general');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article["urlToImage"],
          title: article["title"],
          subTitle: article["description"],
        );
        articleList.add(articleModel);
      }

      return articleList;
    } catch (e) {
      return [];
    }
  }
}

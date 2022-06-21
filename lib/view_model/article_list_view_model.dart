import 'package:flutter/widgets.dart';

import '../model/article.dart';
import '../repository/article_repository.dart';
import '../repository/article_repository_impl.dart';

class ArticleListViewModel with ChangeNotifier {
  final ArticleRepository repository = ArticleRepositoryImpl();
  late List<Article> articles;

  ArticleListViewModel() {
    articles = [];
    fetchArticles();
  }

  Future<void> fetchArticles() async {
    await repository.fetchArticles().then((result) {
      result.when(success: (articles) {
        this.articles = articles;
        notifyListeners();
      }, failure: (error) {
        print(error.message);
      });
    });
  }
}

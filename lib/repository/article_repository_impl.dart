import 'package:dio/dio.dart';

import '../api/client/api_client.dart';
import '../api/response/result.dart';
import '../model/article.dart';
import '../repository/article_repository.dart';

class ArticleRepositoryImpl with ArticleRepository {
  final ApiClient _client;

  ArticleRepositoryImpl([ApiClient? client]) : _client = client ?? ApiClient(Dio());

  @override
  Future<Result<List<Article>>> fetchArticles() {
    return _client
        .fetchArticles()
        .then((articles) => Result<List<Article>>.success(articles))
        .catchError((error) => Result<List<Article>>.failure(error));
  }
}

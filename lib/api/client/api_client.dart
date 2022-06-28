import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../model/article.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://api.github.com")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/search/repositories")
  Future<List<Article>> fetchArticles();
}

import '../api/response/result.dart';
import '../model/article.dart';

abstract class ArticleRepository {
  Future<Result<List<Article>>> fetchArticles();
}

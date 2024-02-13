import 'package:news_app_clean_arch2/core/resources/data_state.dart';
import 'package:news_app_clean_arch2/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();

  // Database methods
  Future<List<ArticleEntity>> getSavedArticles();

  Future<void> saveArticle(ArticleEntity article);

  Future<void> removeArticle(ArticleEntity article);
}

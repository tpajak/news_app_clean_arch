import 'package:news_app_clean_arch2/core/resources/data_state.dart';
import 'package:news_app_clean_arch2/features/daily_news/data/models/article.dart';
import 'package:news_app_clean_arch2/features/daily_news/domain/entities/article.dart';
import 'package:news_app_clean_arch2/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    // TODO: implement getNewsArticles
    throw UnimplementedError();
  }
}

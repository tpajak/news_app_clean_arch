import 'package:news_app_clean_arch2/core/resources/data_state.dart';
import 'package:news_app_clean_arch2/core/usecase/usecase.dart';
import 'package:news_app_clean_arch2/features/daily_news/domain/entities/article.dart';
import 'package:news_app_clean_arch2/features/daily_news/domain/repository/article_repository.dart';

class GetArticleUseCase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);

  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}

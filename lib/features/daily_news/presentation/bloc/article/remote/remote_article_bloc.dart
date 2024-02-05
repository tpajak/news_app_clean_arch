import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_clean_arch2/core/resources/data_state.dart';
import 'package:news_app_clean_arch2/features/daily_news/domain/usecases/get_article.dart';
import 'package:news_app_clean_arch2/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:news_app_clean_arch2/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';

class RemoteArticlesBloc
    extends Bloc<RemoteArticlesEvent, RemoteArticlesState> {
  final GetArticleUseCase _getArticleUseCase;

  RemoteArticlesBloc(this._getArticleUseCase)
      : super(const RemoteArticleLoading()) {
    on<GetArticles>(onGetArticles);
  }

  void onGetArticles(
      GetArticles event, Emitter<RemoteArticlesState> emit) async {
    final dataState = await _getArticleUseCase();
    if (dataState.data is DataSuccess && dataState.data!.isNotEmpty) {
      emit(
        RemoteArticleDone(dataState.data!),
      );
    }

    if (dataState is DataFailed) {
      emit(
        RemoteArticleError(dataState.error!),
      );
    }
  }
}

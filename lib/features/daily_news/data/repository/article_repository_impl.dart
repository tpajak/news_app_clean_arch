import 'dart:io';

import 'package:dio/dio.dart';

import 'package:news_app_clean_arch2/config/constants/constants.dart';
import 'package:news_app_clean_arch2/core/resources/data_state.dart';
import 'package:news_app_clean_arch2/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:news_app_clean_arch2/features/daily_news/data/models/article.dart';
import 'package:news_app_clean_arch2/features/daily_news/domain/entities/article.dart';
import 'package:news_app_clean_arch2/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;

  ArticleRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticles(
        apiKey: newsApiKey,
        country: countryQuery,
        category: categoryQuery,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.unknown,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<List<ArticleModel>> getSavedArticles() async {
    return <ArticleModel>[];
  }

  @override
  Future<void> removeArticle(ArticleEntity article) async {
    print('object');
  }

  @override
  Future<void> saveArticle(ArticleEntity article) async {
    print('object');
  }
}

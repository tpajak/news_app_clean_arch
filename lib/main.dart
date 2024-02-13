import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_clean_arch2/config/theme/app_themes.dart';
import 'package:news_app_clean_arch2/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:news_app_clean_arch2/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:news_app_clean_arch2/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:news_app_clean_arch2/injection_container.dart';

void main() async {
  await initializeDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}

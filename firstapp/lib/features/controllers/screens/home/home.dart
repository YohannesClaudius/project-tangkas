import 'package:flutter/material.dart';
import 'package:news_app/features/controllers/screens/home/widgets/breaking_news.dart';
import 'package:news_app/features/controllers/screens/home/widgets/header_home.dart';
import 'package:news_app/features/controllers/screens/home/widgets/items_article.dart';
import '../../../../common/widgets/navbar/bottom_navbar.dart';
import '../../../../models/article.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Article> breakingNews = Article.articles
        .where((article) => article.topic == 'breaking')
        .toList();
    List<Article> highlightArticles = Article.articles
        .where((article) => article.topic == 'highlight')
        .toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        // leading: IconButton(onPressed: (){}, icon: const Icon(Iconsax.bookmark)),
      ),
      bottomNavigationBar: const BottomNavbar(index: 0),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          HeaderHome(articles: Article.articles),
          BreakingNews(articles: breakingNews),
          const SizedBox(
            height: 10,
          ),
          Items(articles: highlightArticles),
        ],
      ),
    );
  }
}

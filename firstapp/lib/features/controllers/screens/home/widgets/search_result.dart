import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:news_app/features/controllers/screens/home/widgets/article_screen.dart';
// import 'package:news_app/features/controllers/screens/profile/profile.dart';
import '../../../../../models/article.dart';
import '../../../favorite/favorite_controller.dart';

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}

class SearchResultPage extends StatefulWidget {
  final List<Article> articles;
  final String searchQuery;

  const SearchResultPage({
    super.key,
    required this.articles,
    required this.searchQuery,
  });

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  DateTime? selectedDate;

  void _showBottomSheet(BuildContext context, Article article) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        final isFavorite = favoriteArticles.contains(article);

        
      },
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Filter articles based on searchQuery
    List<Article> filteredArticles = widget.articles
        .where(
          (article) => article.title
              .toLowerCase()
              .contains(widget.searchQuery.toLowerCase()),
        )
        .toList();

    if (selectedDate != null) {
      filteredArticles = filteredArticles
          .where((article) => article.createdAt.isSameDate(selectedDate!))
          .toList();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results for "${widget.searchQuery}"'),
        actions: [
          PopupMenuButton<int>(
            onSelected: (item) => _onSelected(context, item),
            itemBuilder: (context) => [
              const PopupMenuItem<int>(
                value: 0,
                child: ListTile(
                    leading: Icon(Icons.date_range_outlined),
                    title: Text('Select Date')),
              ),
              const PopupMenuItem<int>(
                value: 1,
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: filteredArticles.isEmpty
          ? Center(
              child: Text('No articles found for "${widget.searchQuery}"'),
            )
          : ListView.builder(
              itemCount: filteredArticles.length,
              itemBuilder: (context, index) {
                final article = filteredArticles[index];
                return InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => const ArticleScreen(),
                      settings: RouteSettings(
                        arguments: filteredArticles[index],
                      ),
                    );
                    Navigator.push(context, route);
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey.shade300)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    article.category.toUpperCase(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.copyWith(color: Colors.deepOrange),
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    article.title,
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                article.imageUrl,
                                width: 120,
                                height: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${DateTime.now().difference(article.createdAt).inDays} days ago',
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                            IconButton(
                              onPressed: () {
                                _showBottomSheet(context, article);
                              },
                              icon: const Icon(Icons.more_horiz, size: 30),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
    );
  }

  void _onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        // Sort by date
        _selectDate(context);
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/profile');
        // Open Settings
        break;
    }
  }
}

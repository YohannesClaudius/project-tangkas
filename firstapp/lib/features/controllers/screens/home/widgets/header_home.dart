import 'package:flutter/material.dart';
import 'package:news_app/features/controllers/screens/home/widgets/search_result.dart';
import '../../../../../models/article.dart';

import '../../../../../common/widgets/costum_shape/circular_container.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({
    super.key,
    required this.articles,
  });

  final List<Article> articles;

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    void updateSearchQuery(String query) {
      setState(() {
        searchQuery = query;
      });
    }

    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      padding: const EdgeInsets.all(0),
      child: SizedBox(
        height: 350,
        
      ),
    );
  }
}

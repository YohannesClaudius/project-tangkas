import 'package:flutter/material.dart';
import 'package:news_app/features/controllers/screens/home/widgets/article_screen.dart';
import 'package:news_app/features/controllers/screens/home/widgets/image_container.dart';

import '../../../../../models/article.dart';

class BreakingNews extends StatelessWidget {
  const BreakingNews({
    super.key,
    required this.articles,
  });

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Breaking News",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "More",
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height*0.2,
                  margin: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {
                      Route route = MaterialPageRoute(
                        builder: (context) => const ArticleScreen(),
                        settings: RouteSettings(
                          arguments: articles[index],
                        ),
                      );
                      Navigator.push(context, route);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageContainer(
                            width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height*0.2,

                            imageUrl: articles[index].imageUrl),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          articles[index].title,
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.bold, height: 1.5),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:news_app/features/controllers/screens/home/widgets/tag_news.dart';

import '../../../../../models/article.dart';

class NewsHeadline extends StatelessWidget {
  const NewsHeadline({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          CustomTag(
            backgroundColor: Colors.grey.withAlpha(150),
            children: [
              Text(
                article.category,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            article.title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white, height: 1.25, shadows: [
              Shadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(2, 2),
                  blurRadius: 3)
            ]),
          ),
          Text(
            article.subtitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white, shadows: [
              Shadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(2, 2),
                  blurRadius: 3)
            ]),
          ),
        ],
      ),
    );
  }
}

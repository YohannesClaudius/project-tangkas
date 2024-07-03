import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:news_app/features/controllers/screens/home/widgets/headline_news.dart';
import 'package:news_app/features/controllers/screens/home/widgets/image_container.dart';
import 'package:news_app/features/controllers/screens/home/widgets/tag_news.dart';
import '../../../../../models/article.dart';
import '../../../favorite/favorite_controller.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  late Article article;

  @override
  Widget build(BuildContext context) {
    article = ModalRoute.of(context)!.settings.arguments as Article;
    return ImageContainer(
      width: double.infinity,
      imageUrl: (article.imageUrl),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          // elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            NewsHeadline(
              article: article,
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomTag(
                        backgroundColor: Colors.black,
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage(article.authorImgUrl),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            article.author,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CustomTag(
                        backgroundColor: Colors.grey.shade200,
                        children: [
                          const Icon(
                            Icons.date_range,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            DateFormat('dd/MM/yyyy').format(article.createdAt),
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    article.title,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    article.body,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(height: 1.5),
                  )
                ],
              ),
            
            )
          ],
        ),
        floatingActionButton: SpeedDial(
          icon: Icons.share,
          activeIcon: Icons.close,
          backgroundColor: Colors.black,
          overlayColor: Colors.grey,
          foregroundColor: Colors.white,
          overlayOpacity: 0.5,
          children: [
            SpeedDialChild(
              child: const Icon(Icons.bookmark),
              shape: const CircleBorder(),
              backgroundColor: Colors.white,
              foregroundColor: favoriteArticles.contains(article)
                  ? Colors.black
                  : Colors.black.withOpacity(0.4),
              onTap: () {
                if (favoriteArticles.contains(article)) {
                  setState(() {
                    favoriteArticles.remove(article);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Article removed from favorites')),
                    );
                  });
                } else {
                  setState(() {
                    favoriteArticles.add(article);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        behavior: SnackBarBehavior.fixed,
                        content: Text('Article saved to favorites'),
                      ),
                    );
                  });
                }
              },
            ),
            SpeedDialChild(
              child: const Tooltip(
                showDuration: Duration(seconds: 2),
                waitDuration: Duration(milliseconds: 20),
                message: 'Copy',
                child: Icon(Icons.link),
              ),
              shape: const CircleBorder(),
              backgroundColor: Colors.white,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Link copied'),
                  ),
                );
              },
            ),
            SpeedDialChild(
              shape: const CircleBorder(),
              child: const Icon(FontAwesomeIcons.facebook),
              backgroundColor: Colors.white,
              onTap: () {},
            ),
            SpeedDialChild(
              shape: const CircleBorder(),
              child: const Icon(FontAwesomeIcons.twitter),
              backgroundColor: Colors.white,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

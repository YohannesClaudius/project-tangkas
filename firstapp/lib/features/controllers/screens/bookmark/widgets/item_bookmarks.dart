import 'package:flutter/material.dart';

import '../../../favorite/favorite_controller.dart';
import '../../home/widgets/article_screen.dart';

class BookmarkItem extends StatefulWidget {
  final int index;
  final Function onDelete;

  const BookmarkItem({super.key, required this.index, required this.onDelete});

  @override
  State<BookmarkItem> createState() => _BookmarkItemState();
}

class _BookmarkItemState extends State<BookmarkItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ArticleScreen(),
              settings: RouteSettings(
                arguments: favoriteArticles[widget.index],
              ),
            ));
      },
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            favoriteArticles[widget.index].imageUrl,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          favoriteArticles[widget.index].title,
          style: const TextStyle(fontWeight: FontWeight.bold),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          favoriteArticles[widget.index].subtitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: IconButton(
          icon: const Icon(Icons.bookmark, color: Colors.black),
          onPressed: () {
            widget.onDelete(widget.index);
          },
        ),
      ),
    );
  }
}

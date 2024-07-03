import 'package:flutter/material.dart';
import 'package:news_app/features/controllers/screens/bookmark/widgets/item_bookmarks.dart';
import '../../../../common/widgets/navbar/bottom_navbar.dart';
import '../../favorite/favorite_controller.dart';

class BookmarksScreen extends StatefulWidget {
  const BookmarksScreen({super.key});

  @override
  State<BookmarksScreen> createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'All Bookmarks',
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: const BottomNavbar(index: 1),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
        child: favoriteArticles.isEmpty
            ? Center(
                child: Container(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.bookmark_outline_sharp,
                        size: 100,
                        color: Colors.grey,
                      ),
                      Text(
                        "Simpan berita yang ingin kamu baca di sini.",
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )
            : ListView.separated(
                padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
                itemCount: favoriteArticles.length,
                itemBuilder: (context, index) {
                  return BookmarkItem(
                    index: index,
                    onDelete: (int index) {
                      setState(() {
                        favoriteArticles.removeAt(index);
                      });
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Colors.grey.shade400,
                  );
                },
              ),
      ),
    );
  }
}

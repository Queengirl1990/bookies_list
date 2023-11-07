import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class RemoteApi {
  static Future<List<BookSummary>> getBookList(int pageKey, int pageSize) async {
    // Simuliere den API-Aufruf und gib eine Liste von BookSummary zurück
    await Future.delayed(const Duration(seconds: 2)); // Simuliere eine Verzögerung
    return List.generate(pageSize, (index) => BookSummary(index + pageKey, 'Book $index'));
  }
}

class BookSummary {
  final int id;
  final String title;

  BookSummary(this.id, this.title);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: BookListView(),
      ),
    );
  }
}

class BookListView extends StatefulWidget {
  const BookListView({Key? key}) : super(key: key);

  @override
  _BookListViewState createState() => _BookListViewState();
}

class _BookListViewState extends State<BookListView> {
  static const _pageSize = 20;

  final PagingController<int, BookSummary> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await RemoteApi.getBookList(pageKey, _pageSize);
      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) => PagedListView<int, BookSummary>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<BookSummary>(
          itemBuilder: (context, item, index) => BookListItem(
            book: item,
          ),
        ),
      );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}

class BookListItem extends StatelessWidget {
  final BookSummary book;

  const BookListItem({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      subtitle: Text('ID: ${book.id}'),
    );
  }
}

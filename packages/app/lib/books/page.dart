import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_bookstore_api/book.dart';
import 'package:riverpod_bookstore_api/repository.dart';
import 'package:riverpod_bookstore_app/common/bookstore_scaffold.dart';
import 'package:riverpod_bookstore_app/navigation/navigator.dart';

final booksByCategoryProvider = Provider.family<List<Book>, BookCategory>((ref, category) =>
    ref.watch(bookstoreRepositoryProvider).where((book) => book.category == category).toList());

class BooksPage extends StatelessWidget {
  final List<Book> books;
  const BooksPage({Key? key, required this.books}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      BookstoreScaffold(titleLabel: 'Books', child: _BooksPage(books:books));
}

class _BooksPage extends StatelessWidget {
  final List<Book> books;

  const _BooksPage({Key? key, required this.books}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookTile(book: books[index]);
        });
  }
}

class BookTile extends ConsumerWidget {
  final Book book;

  const BookTile({Key? key, required this.book}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) => GestureDetector(
    onTap: () => ref.watch(bookstoreNavigationStackProvider.notifier).book(book),
    child: ListTile(
          title: Text(book.title),
          subtitle: Text('by ${book.author}'),
        ),
  );
}

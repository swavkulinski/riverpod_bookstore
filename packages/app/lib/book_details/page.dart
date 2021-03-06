import 'package:flutter/material.dart';
import 'package:riverpod_bookstore_api/api.dart';
import 'package:riverpod_bookstore_app/common/bookstore_scaffold.dart';

class BookDetailsPage extends StatelessWidget {
  final Book book;

  const BookDetailsPage({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BookstoreScaffold(titleLabel: book.title, child: _BookDetailsPage(book: book));
}

class _BookDetailsPage extends StatelessWidget {
  final Book book;

  const _BookDetailsPage({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _EntryWidget(title: 'Title', value: book.title),
          _EntryWidget(title: 'Author', value: book.author),
          _EntryWidget(title: 'Category', value: book.category.name),
          _EntryWidget(title: 'Synopsis', value: book.synopsis)
        ],
      );
}

class _EntryWidget extends StatelessWidget {
  final String title;
  final String value;

  const _EntryWidget({Key? key, required this.title, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints.expand(width: 80, height: 20),
            child: Text(title),
          ),
          Expanded(child: Text(value)),
        ],
      );
}

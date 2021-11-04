import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_bookstore_app/common/bookstore_scaffold.dart';

class BooksPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) =>
      BookstoreScaffold(titleLabel: 'Books', child: _BooksPage());
}

class _BooksPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) => const Center(child: Text('Books'));
}

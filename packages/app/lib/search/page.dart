import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_bookstore_app/common/bookstore_scaffold.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) =>
      BookstoreScaffold(titleLabel: 'Search', child: _SearchPage());
}

class _SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const Center(child: Text('Search'));
}

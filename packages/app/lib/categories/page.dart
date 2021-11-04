import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_bookstore_app/common/bookstore_scaffold.dart';

class CategoriesPage extends ConsumerWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) =>
      BookstoreScaffold(titleLabel: 'Categories', child: _CategoriesPage());
}

class _CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const Center(child: Text('Categories'));
}

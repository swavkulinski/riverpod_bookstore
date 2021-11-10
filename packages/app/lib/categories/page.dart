import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_bookstore_api/book.dart';
import 'package:riverpod_bookstore_api/repository.dart';
import 'package:riverpod_bookstore_app/common/bookstore_scaffold.dart';
import 'package:riverpod_bookstore_app/navigation/navigator.dart';

class CategoriesPage extends ConsumerWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) =>
      BookstoreScaffold(titleLabel: 'Categories', child: _CategoriesPage());
}

class _CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categories = context.read(categoryProvider);
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) => CategoryTile(
        category: categories[index],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final BookCategory category;

  const CategoryTile({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => context.read(bookstoreNavigationStackProvider.notifier).category(category),
        child: ListTile(
          title: Text(category.name),
        ),
      );
}

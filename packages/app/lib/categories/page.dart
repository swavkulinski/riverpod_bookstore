import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_bookstore_api/api.dart';
import 'package:riverpod_bookstore_app/common/bookstore_scaffold.dart';
import 'package:riverpod_bookstore_app/navigation/navigator.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BookstoreScaffold(titleLabel: 'Categories', child: _CategoriesPage());
}

class _CategoriesPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoryProvider);
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) => CategoryTile(
        category: categories[index],
      ),
    );
  }
}

class CategoryTile extends ConsumerWidget {
  final BookCategory category;

  const CategoryTile({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => GestureDetector(
        onTap: () => ref.watch(bookstoreNavigationStackProvider.notifier).category(category),
        child: ListTile(
          title: Text(category.name),
        ),
      );
}

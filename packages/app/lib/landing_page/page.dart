import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_bookstore_app/navigation/navigator.dart';

final _landingPageTitleProvider = Provider<String>((_) => 'Bookstore');
final _landingSearchLabelProvider = Provider<String>((_) => 'Search');
final _landingCategoryLabelProvider = Provider<String>((_) => 'Categories');

class LandingPage extends ConsumerWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigator = ref.watch(bookstoreNavigationStackProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.watch(_landingPageTitleProvider)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: navigator.search,
              icon: const Icon(Icons.search),
              label: Text(
                ref.watch(_landingSearchLabelProvider),
              ),
            ),
            ElevatedButton.icon(
                onPressed: navigator.categories,
                icon: const Icon(Icons.category),
                label: Text(ref.watch(_landingCategoryLabelProvider)))
          ],
        ),
      ),
    );
  }
}

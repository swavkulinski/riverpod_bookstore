import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _landingPageTitleProvider = Provider<String>((_) => 'Bookstore');
final _landingSearchLabelProvider = Provider<String>((_) => 'Search');
final _landingCategoryLabelProvider = Provider<String>((_) => 'Categories');

class LandingPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      appBar: AppBar(
        title: Text(watch(_landingPageTitleProvider)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.search),
              label: Text(
                watch(_landingSearchLabelProvider),
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.category),
                label: Text(watch(_landingCategoryLabelProvider)))
          ],
        ),
      ),
    );
  }
}

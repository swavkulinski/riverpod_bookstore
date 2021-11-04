import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_bookstore_app/navigation/navigator.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return MaterialApp.router(
      routerDelegate: watch(bookstoreRouterDelegateProvider),
      routeInformationParser: watch(bookstoreRouteInformationParser),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

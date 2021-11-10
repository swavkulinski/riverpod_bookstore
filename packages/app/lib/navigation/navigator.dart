import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_bookstore_api/book.dart';
import 'package:riverpod_bookstore_app/book_details/page.dart';
import 'package:riverpod_bookstore_app/books/page.dart';
import 'package:riverpod_bookstore_app/categories/page.dart';
import 'package:riverpod_bookstore_app/landing_page/page.dart';
import 'package:riverpod_bookstore_app/navigation/bookstore_route.dart';
import 'package:riverpod_bookstore_app/search/page.dart';

final _bookstoreNavigatorKeyProvider =
    Provider<GlobalKey<NavigatorState>>((_) => GlobalKey<NavigatorState>());

final bookstoreRouterDelegateProvider =
    Provider<BookstoreRouterDelegate>((ref) => BookstoreRouterDelegate(ref));

class BookstoreRouterDelegate extends RouterDelegate<BookstoreRoute>
    with PopNavigatorRouterDelegateMixin, ChangeNotifier {
  final ProviderReference ref;
  BookstoreRouterDelegate(this.ref);
  @override
  Widget build(BuildContext context) => Navigator(
        key: navigatorKey,
        pages: ref.watch(bookstoreNavigationStackProvider),
        onPopPage: (route, result) {
          ref.watch(bookstoreNavigationStackProvider.notifier).pop();
          return false;
        },
      );
  @override
  GlobalKey<NavigatorState>? get navigatorKey => ref.read(_bookstoreNavigatorKeyProvider);

  @override
  Future<void> setNewRoutePath(configuration) async {}
}

typedef BookstorePage = MaterialPage<void>;
typedef BookstorePageKey = ValueKey<String>;

const landingPage = BookstorePage(
  key: BookstorePageKey('landing'),
  child: LandingPage(),
);

const categoriesPage = BookstorePage(
  key: BookstorePageKey('categories'),
  child: CategoriesPage(),
);

const searchPage = BookstorePage(
  key: BookstorePageKey('search'),
  child: SearchPage(),
);

BookstorePage booksPage(List<Book> books) =>
    BookstorePage(key: const BookstorePageKey('books'), child: BooksPage(books: books));

BookstorePage bookDetailsPage(Book book) =>
    BookstorePage(key: const BookstorePageKey('bookDetails'), child: BookDetailsPage(book: book));

final bookstoreNavigationStackProvider =
    StateNotifierProvider<BookstoreNavigationStack, List<BookstorePage>>(
        (ref) => BookstoreNavigationStack(ref));

class BookstoreNavigationStack extends StateNotifier<List<BookstorePage>> {
  final ProviderReference ref;
  BookstoreNavigationStack(this.ref) : super([landingPage]);

  void search() => state = state.toList()..add(searchPage);
  void categories() => state = state.toList()..add(categoriesPage);
  void category(BookCategory category) =>
      state = state.toList()..add(booksPage(ref.watch(booksByCategoryProvider(category))));
  void book(Book book) => state = state.toList()..add(bookDetailsPage(book));
  void pop() => state = state.length == 1 ? state : state.toList()
    ..removeLast();
}

final bookstoreRouteInformationParser =
    Provider<BookstoreRouteInformationParser>((_) => BookstoreRouteInformationParser());

class BookstoreRouteInformationParser extends RouteInformationParser<BookstoreRoute> {
  @override
  Future<BookstoreRoute> parseRouteInformation(RouteInformation routeInformation) =>
      SynchronousFuture(LandingBookstoreRoute());
}

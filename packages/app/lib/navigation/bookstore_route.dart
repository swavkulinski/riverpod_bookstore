import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookstore_route.freezed.dart';

@freezed
class BookstoreRoute with _$BookstoreRoute {
  factory BookstoreRoute.landing() = LandingBookstoreRoute;
  factory BookstoreRoute.search() = SearchBookstoreRoute;
  factory BookstoreRoute.categories() = CategoriesBookstoreRoute;
  factory BookstoreRoute.books() = BooksBookstoreRoute;
}

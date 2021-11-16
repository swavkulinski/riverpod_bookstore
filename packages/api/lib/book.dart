import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

@freezed
class Book with _$Book {
  factory Book(
      {required int id,
      required String title,
      required BookCategory category,
      required String author,
      required String synopsis}) = _Book;
}

@freezed
class BookCategory with _$BookCategory {
  const factory BookCategory({required String name}) = _BookCategory;
}

@freezed
class BookstoreState with _$BookstoreState {
  const factory BookstoreState({required List<Book> collection}) = _BookstoreState;
}

@freezed
class BookCategoryState with _$BookCategoryState {
  const factory BookCategoryState({required List<BookCategory> collection}) = _BookCategoryState;
}

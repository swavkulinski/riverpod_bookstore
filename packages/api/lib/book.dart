import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

@freezed
class Book with _$Book {
  factory Book(
      {required String title,
      required BookCategory category,
      required String author,
      required String synopsis}) = _Book;
}

@freezed
class BookCategory with _$BookCategory {
  const factory  BookCategory({required String name}) = _BookCategory;
}

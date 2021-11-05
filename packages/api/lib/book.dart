import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

@freezed
class Book with _$Book {
  factory Book(
      {required String title,
      required Category category,
      required String author,
      required String synopsis}) = _Book;
}

@freezed
class Category with _$Category {
  const factory  Category({required String name}) = _Category;
}

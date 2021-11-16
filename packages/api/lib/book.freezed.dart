// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookTearOff {
  const _$BookTearOff();

  _Book call(
      {required int id,
      required String title,
      required BookCategory category,
      required String author,
      required String synopsis}) {
    return _Book(
      id: id,
      title: title,
      category: category,
      author: author,
      synopsis: synopsis,
    );
  }
}

/// @nodoc
const $Book = _$BookTearOff();

/// @nodoc
mixin _$Book {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  BookCategory get category => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get synopsis => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      BookCategory category,
      String author,
      String synopsis});

  $BookCategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? category = freezed,
    Object? author = freezed,
    Object? synopsis = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as BookCategory,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      synopsis: synopsis == freezed
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $BookCategoryCopyWith<$Res> get category {
    return $BookCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) then) =
      __$BookCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      BookCategory category,
      String author,
      String synopsis});

  @override
  $BookCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(_Book _value, $Res Function(_Book) _then)
      : super(_value, (v) => _then(v as _Book));

  @override
  _Book get _value => super._value as _Book;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? category = freezed,
    Object? author = freezed,
    Object? synopsis = freezed,
  }) {
    return _then(_Book(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as BookCategory,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      synopsis: synopsis == freezed
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Book implements _Book {
  _$_Book(
      {required this.id,
      required this.title,
      required this.category,
      required this.author,
      required this.synopsis});

  @override
  final int id;
  @override
  final String title;
  @override
  final BookCategory category;
  @override
  final String author;
  @override
  final String synopsis;

  @override
  String toString() {
    return 'Book(id: $id, title: $title, category: $category, author: $author, synopsis: $synopsis)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Book &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.synopsis, synopsis) ||
                other.synopsis == synopsis));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, category, author, synopsis);

  @JsonKey(ignore: true)
  @override
  _$BookCopyWith<_Book> get copyWith =>
      __$BookCopyWithImpl<_Book>(this, _$identity);
}

abstract class _Book implements Book {
  factory _Book(
      {required int id,
      required String title,
      required BookCategory category,
      required String author,
      required String synopsis}) = _$_Book;

  @override
  int get id;
  @override
  String get title;
  @override
  BookCategory get category;
  @override
  String get author;
  @override
  String get synopsis;
  @override
  @JsonKey(ignore: true)
  _$BookCopyWith<_Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$BookCategoryTearOff {
  const _$BookCategoryTearOff();

  _BookCategory call({required String name}) {
    return _BookCategory(
      name: name,
    );
  }
}

/// @nodoc
const $BookCategory = _$BookCategoryTearOff();

/// @nodoc
mixin _$BookCategory {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookCategoryCopyWith<BookCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCategoryCopyWith<$Res> {
  factory $BookCategoryCopyWith(
          BookCategory value, $Res Function(BookCategory) then) =
      _$BookCategoryCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$BookCategoryCopyWithImpl<$Res> implements $BookCategoryCopyWith<$Res> {
  _$BookCategoryCopyWithImpl(this._value, this._then);

  final BookCategory _value;
  // ignore: unused_field
  final $Res Function(BookCategory) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BookCategoryCopyWith<$Res>
    implements $BookCategoryCopyWith<$Res> {
  factory _$BookCategoryCopyWith(
          _BookCategory value, $Res Function(_BookCategory) then) =
      __$BookCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$BookCategoryCopyWithImpl<$Res> extends _$BookCategoryCopyWithImpl<$Res>
    implements _$BookCategoryCopyWith<$Res> {
  __$BookCategoryCopyWithImpl(
      _BookCategory _value, $Res Function(_BookCategory) _then)
      : super(_value, (v) => _then(v as _BookCategory));

  @override
  _BookCategory get _value => super._value as _BookCategory;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_BookCategory(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BookCategory implements _BookCategory {
  const _$_BookCategory({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'BookCategory(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookCategory &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  _$BookCategoryCopyWith<_BookCategory> get copyWith =>
      __$BookCategoryCopyWithImpl<_BookCategory>(this, _$identity);
}

abstract class _BookCategory implements BookCategory {
  const factory _BookCategory({required String name}) = _$_BookCategory;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$BookCategoryCopyWith<_BookCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BookstoreStateTearOff {
  const _$BookstoreStateTearOff();

  _BookstoreState call({required List<Book> collection}) {
    return _BookstoreState(
      collection: collection,
    );
  }
}

/// @nodoc
const $BookstoreState = _$BookstoreStateTearOff();

/// @nodoc
mixin _$BookstoreState {
  List<Book> get collection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookstoreStateCopyWith<BookstoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookstoreStateCopyWith<$Res> {
  factory $BookstoreStateCopyWith(
          BookstoreState value, $Res Function(BookstoreState) then) =
      _$BookstoreStateCopyWithImpl<$Res>;
  $Res call({List<Book> collection});
}

/// @nodoc
class _$BookstoreStateCopyWithImpl<$Res>
    implements $BookstoreStateCopyWith<$Res> {
  _$BookstoreStateCopyWithImpl(this._value, this._then);

  final BookstoreState _value;
  // ignore: unused_field
  final $Res Function(BookstoreState) _then;

  @override
  $Res call({
    Object? collection = freezed,
  }) {
    return _then(_value.copyWith(
      collection: collection == freezed
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
abstract class _$BookstoreStateCopyWith<$Res>
    implements $BookstoreStateCopyWith<$Res> {
  factory _$BookstoreStateCopyWith(
          _BookstoreState value, $Res Function(_BookstoreState) then) =
      __$BookstoreStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Book> collection});
}

/// @nodoc
class __$BookstoreStateCopyWithImpl<$Res>
    extends _$BookstoreStateCopyWithImpl<$Res>
    implements _$BookstoreStateCopyWith<$Res> {
  __$BookstoreStateCopyWithImpl(
      _BookstoreState _value, $Res Function(_BookstoreState) _then)
      : super(_value, (v) => _then(v as _BookstoreState));

  @override
  _BookstoreState get _value => super._value as _BookstoreState;

  @override
  $Res call({
    Object? collection = freezed,
  }) {
    return _then(_BookstoreState(
      collection: collection == freezed
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$_BookstoreState implements _BookstoreState {
  const _$_BookstoreState({required this.collection});

  @override
  final List<Book> collection;

  @override
  String toString() {
    return 'BookstoreState(collection: $collection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookstoreState &&
            const DeepCollectionEquality()
                .equals(other.collection, collection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(collection));

  @JsonKey(ignore: true)
  @override
  _$BookstoreStateCopyWith<_BookstoreState> get copyWith =>
      __$BookstoreStateCopyWithImpl<_BookstoreState>(this, _$identity);
}

abstract class _BookstoreState implements BookstoreState {
  const factory _BookstoreState({required List<Book> collection}) =
      _$_BookstoreState;

  @override
  List<Book> get collection;
  @override
  @JsonKey(ignore: true)
  _$BookstoreStateCopyWith<_BookstoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BookCategoryStateTearOff {
  const _$BookCategoryStateTearOff();

  _BookCategoryState call({required List<BookCategory> collection}) {
    return _BookCategoryState(
      collection: collection,
    );
  }
}

/// @nodoc
const $BookCategoryState = _$BookCategoryStateTearOff();

/// @nodoc
mixin _$BookCategoryState {
  List<BookCategory> get collection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookCategoryStateCopyWith<BookCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCategoryStateCopyWith<$Res> {
  factory $BookCategoryStateCopyWith(
          BookCategoryState value, $Res Function(BookCategoryState) then) =
      _$BookCategoryStateCopyWithImpl<$Res>;
  $Res call({List<BookCategory> collection});
}

/// @nodoc
class _$BookCategoryStateCopyWithImpl<$Res>
    implements $BookCategoryStateCopyWith<$Res> {
  _$BookCategoryStateCopyWithImpl(this._value, this._then);

  final BookCategoryState _value;
  // ignore: unused_field
  final $Res Function(BookCategoryState) _then;

  @override
  $Res call({
    Object? collection = freezed,
  }) {
    return _then(_value.copyWith(
      collection: collection == freezed
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as List<BookCategory>,
    ));
  }
}

/// @nodoc
abstract class _$BookCategoryStateCopyWith<$Res>
    implements $BookCategoryStateCopyWith<$Res> {
  factory _$BookCategoryStateCopyWith(
          _BookCategoryState value, $Res Function(_BookCategoryState) then) =
      __$BookCategoryStateCopyWithImpl<$Res>;
  @override
  $Res call({List<BookCategory> collection});
}

/// @nodoc
class __$BookCategoryStateCopyWithImpl<$Res>
    extends _$BookCategoryStateCopyWithImpl<$Res>
    implements _$BookCategoryStateCopyWith<$Res> {
  __$BookCategoryStateCopyWithImpl(
      _BookCategoryState _value, $Res Function(_BookCategoryState) _then)
      : super(_value, (v) => _then(v as _BookCategoryState));

  @override
  _BookCategoryState get _value => super._value as _BookCategoryState;

  @override
  $Res call({
    Object? collection = freezed,
  }) {
    return _then(_BookCategoryState(
      collection: collection == freezed
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as List<BookCategory>,
    ));
  }
}

/// @nodoc

class _$_BookCategoryState implements _BookCategoryState {
  const _$_BookCategoryState({required this.collection});

  @override
  final List<BookCategory> collection;

  @override
  String toString() {
    return 'BookCategoryState(collection: $collection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookCategoryState &&
            const DeepCollectionEquality()
                .equals(other.collection, collection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(collection));

  @JsonKey(ignore: true)
  @override
  _$BookCategoryStateCopyWith<_BookCategoryState> get copyWith =>
      __$BookCategoryStateCopyWithImpl<_BookCategoryState>(this, _$identity);
}

abstract class _BookCategoryState implements BookCategoryState {
  const factory _BookCategoryState({required List<BookCategory> collection}) =
      _$_BookCategoryState;

  @override
  List<BookCategory> get collection;
  @override
  @JsonKey(ignore: true)
  _$BookCategoryStateCopyWith<_BookCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

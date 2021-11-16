import 'package:riverpod/riverpod.dart';
import 'package:riverpod_bookstore_api/api.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';

@GenerateMocks(
  [Book],
)
void main() {
  group('BookstoreRepository', () {
    test('addBook - book is added and list is a copy', () {
      final mockBook = FakeBook();
      final mockInitialStore = <Book>[];
      final mockContainer = ProviderContainer(overrides: [
        ProviderOverride(origin: initialBooks, override: Provider<List<Book>>((_) => mockInitialStore))
      ]);
      final sot = mockContainer.read(bookstoreRepositoryProvider.notifier);
      sot.registerBook(mockBook);
      expect(mockContainer.read(bookstoreRepositoryProvider), [mockBook]);
      expect(mockContainer.read(bookstoreRepositoryProvider).hashCode != mockInitialStore.hashCode, true);
    });
    test('removeBook - book is removed and list is a copy', () {
      final mockBook = FakeBook();
      final mockInitialStore = <Book>[mockBook];
      final mockContainer = ProviderContainer(overrides: [
        ProviderOverride(origin: initialBooks, override: Provider<List<Book>>((_) => mockInitialStore))
      ]);
      final sot = mockContainer.read(bookstoreRepositoryProvider.notifier);
      sot.removeBook(mockBook);
      expect(mockContainer.read(bookstoreRepositoryProvider), []);
      expect(mockContainer.read(bookstoreRepositoryProvider).hashCode != mockInitialStore.hashCode, true);
    });
  });

  group('CategoryRepository', () {
    test('addCategory - category is added and list is a copy', () {
      final mockCategory = FakeBookCategory();
      final mockInitialCategoryStore = <BookCategory>[];
      final mockContainer = ProviderContainer(overrides: [
        ProviderOverride(
            origin: initalBookCategories,
            override: Provider<List<BookCategory>>((_) => mockInitialCategoryStore))
      ]);
      final sot = mockContainer.read(categoryProvider.notifier);
      sot.addCategory(mockCategory);
      expect(mockContainer.read(categoryProvider), [mockCategory]);
      expect(mockContainer.read(categoryProvider).hashCode != mockInitialCategoryStore, true);
    });
    test('removeCategory - category is removed and list is a copy', () {
      final mockCategory = FakeBookCategory();
      final mockInitialCategoryStore = <BookCategory>[mockCategory];
      final mockContainer = ProviderContainer(overrides: [
        ProviderOverride(
            origin: initalBookCategories,
            override: Provider<List<BookCategory>>((_) => mockInitialCategoryStore))
      ]);
      final sot = mockContainer.read(categoryProvider.notifier);
      sot.removeCategory(mockCategory);
      expect(mockContainer.read(categoryProvider), []);
      expect(mockContainer.read(categoryProvider).hashCode != mockInitialCategoryStore, true);
    });
  });
}

class FakeBook extends Fake implements Book {}

class FakeBookCategory extends Fake implements BookCategory {}

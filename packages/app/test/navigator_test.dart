import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_bookstore_api/test/repository_test.dart';
import 'package:riverpod_bookstore_app/navigation/navigator.dart';
import 'package:test/test.dart';

void main() {
  group('BookstoreNavigationStack', () {
    late ProviderContainer mockContainer;
    late BookstoreNavigationStack sot;
    late BookstorePage mockPageOne;
    late BookstorePage mockPageTwo;

    //Steps
    void givenVanillaContainer() {
      mockContainer = ProviderContainer();
    }

    void givenSubjectOfTest() {
      sot = mockContainer.read(bookstoreNavigationStackProvider.notifier);
    }

    void givenContainerWithNavigatorStack() {
      mockPageOne = FakeBookstorePage();
      mockPageTwo = FakeBookstorePage();
      mockContainer = ProviderContainer(overrides: [
        ProviderOverride(
            origin: initialBookstoreNavigationStack,
            override: Provider<List<BookstorePage>>((ref) => [mockPageOne, mockPageTwo]))
      ]);
    }

    //Tests
    test('Push categories()', () {
      givenVanillaContainer();
      givenSubjectOfTest();
      final beforeHashcode = mockContainer.read(bookstoreNavigationStackProvider).hashCode;
      sot.categories();
      final result = mockContainer.read(bookstoreNavigationStackProvider);
      expect(result, [landingPage, categoriesPage]);
      expect(beforeHashcode != result.hashCode, true);
    });

    test('Push books()', () {
      givenVanillaContainer();
      givenSubjectOfTest();
      final fakeBookCategory = FakeBookCategory();
      sot.category(fakeBookCategory);
      final result = mockContainer.read(bookstoreNavigationStackProvider).last;
      expect(result.key, const BookstorePageKey('books'));
    });
    test('Push book()', () {
      givenVanillaContainer();
      givenSubjectOfTest();
      final fakeBook = FakeBook();
      sot.book(fakeBook);
      final result = mockContainer.read(bookstoreNavigationStackProvider).last;
      expect(result.key, const BookstorePageKey('bookDetails'));
    });
    test('Push search()', () {
      givenVanillaContainer();
      givenSubjectOfTest();
      sot.search();
      final result = mockContainer.read(bookstoreNavigationStackProvider).last;
      expect(result.key, const BookstorePageKey('search'));
    });
    test('Pop()', () {
      givenContainerWithNavigatorStack();
      givenSubjectOfTest();
      sot.pop();
      final result = mockContainer.read(bookstoreNavigationStackProvider).last;
      expect(result, mockPageOne);
    });
  });
}

class FakeBookstorePage extends Fake implements BookstorePage {}

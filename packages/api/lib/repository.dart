import 'package:riverpod/riverpod.dart';
import 'package:riverpod_bookstore_api/book.dart';

class BookstoreRepository extends StateNotifier<List<Book>> {
  BookstoreRepository() : super(initialBooks);

  void registerBook(Book book) {
    state = state.toList()..add(book);
  }

  void removeBook(Book book) {
    state = state.toList()..remove(book);
  }

  void registerCollection(List<Book> books) {
    state = state.toList()..addAll(books);
  }
}

final initialBooks = [
  Book(
    id: 0,
    author: 'Frank Herbert', title: 'Dune', category: sciFi, synopsis: """
Dune is set in the distant future amidst a feudal interstellar society in which 
various noble houses control planetary fiefs. It tells the story of young Paul Atreides, 
whose family accepts the stewardship of the planet Arrakis. While the planet is 
an inhospitable and sparsely populated desert wasteland, it is the only source 
of melange, or "spice", a drug that extends life and enhances mental abilities. 
Melange is also necessary for space navigation, which requires a kind 
of multidimensional awareness and foresight that only the drug provides. 
As melange can only be produced on Arrakis, control of the planet is a coveted 
and dangerous undertaking. The story explores the multilayered interactions 
of politics, religion, ecology, technology, and human emotion, as the factions 
of the empire confront each other in a struggle for the control of Arrakis and 
its spice.
"""),
  Book(
    id: 1,
    author: 'J. R. R. Tolkien', title: 'The Lord of the Rings', category: fantasy, synopsis: """
The future of civilization rests in the fate of the One Ring, which has been lost 
for centuries. Powerful forces are unrelenting in their search for it. But fate 
has placed it in the hands of a young Hobbit named Frodo Baggins (Elijah Wood), 
who inherits the Ring and steps into legend. A daunting task lies ahead for Frodo 
when he becomes the Ringbearer - to destroy the One Ring in the fires of Mount Doom 
where it was forged.
"""),
  Book(
    id: 2,
    author: 'Isaac Asimov', title: 'Foundation', category: sciFi, synopsis: """
Gaal Dornick travels to the Galactic Empire's capital, Trantor, to take a job with 
his hero, Hari Seldon. When the two meet, Seldon uses a branch of mathematics called 
psychohistory to prove that the Galactic Empire will fall in three centuries, 
ushering in a galaxy-wide Dark Age.
"""),
  
  Book(
    id: 3,
    author: 'Andrzej Sapkowski', title: 'Blood of Elves', category: fantasy, synopsis: """
The Empire of Nilfgaard attacks the Kingdom of Cintra. Queen Calanthe commits suicide 
and her granddaughter, Cirilla, called Ciri and nicknamed the "Lion Cub of Cintra" 
manages to flee from the burning capital city. Emhyr var Emreis, Emperor of Nilfgaard, 
sends his spies to find her. He knows that this young girl has great importance, 
not only because of her royal blood, but also because of her magical potential 
and elven blood in her veins.
"""),
  Book(
    id: 4,
      author: 'Philip K. Dick',
      title: 'Do Androids Dream of Electric Sheep',
      category: sciFi,
      synopsis: """
Rick Deckard, a bounty hunter for the San Francisco Police Department, is assigned 
to "retire" (kill) six androids of the new and highly intelligent Nexus-6 model 
which have recently escaped from Mars and traveled to Earth. These androids are 
made of organic matter so similar to a human's that only a posthumous "bone marrow 
analysis" can independently prove the difference, making them almost impossible 
to distinguish from real people.
"""),
  Book(
    id: 5,
    author: 'Stanislaw Lem', title: 'Solaris', category: sciFi, synopsis: """
Solaris chronicles the ultimate futility of attempted communications with 
the extraterrestrial life inhabiting a distant alien planet named Solaris. 
The planet is almost completely covered with an ocean of gel that is revealed 
to be a single, planet-encompassing entity. Terran scientists conjecture it is 
a living and a sentient being, and attempt to communicate with it.
  """)
];

const sciFi = const BookCategory(name: 'Science Fiction');
const fantasy = const BookCategory(name: 'Fantasy');

final categoryProvider = Provider<List<BookCategory>>((_) => [sciFi, fantasy]);
final bookstoreRepositoryProvider =
    StateNotifierProvider<BookstoreRepository, List<Book>>((_) => BookstoreRepository());

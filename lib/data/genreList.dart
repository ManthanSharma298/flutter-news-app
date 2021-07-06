import '../components/genreClass.dart';

List<GenreClass> getListFunc() {
  List<GenreClass> genreList = [];

  GenreClass newGenre;

  newGenre = GenreClass();
  newGenre.genreName = 'Sports';
  newGenre.imageUrl =
      'https://images.unsplash.com/photo-1575361204480-aadea25e6e68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=751&q=80';

  genreList.add(newGenre);

  newGenre = GenreClass();
  newGenre.genreName = 'Business';
  newGenre.imageUrl =
      'https://images.unsplash.com/photo-1591696205602-2f950c417cb9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80';
  genreList.add(newGenre);

  newGenre = GenreClass();
  newGenre.genreName = 'Entertainment';
  newGenre.imageUrl =
      'https://images.unsplash.com/photo-1543536448-d209d2d13a1c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80';
  genreList.add(newGenre);

  newGenre = GenreClass();
  newGenre.genreName = 'Health';
  newGenre.imageUrl =
      'https://images.unsplash.com/photo-1498837167922-ddd27525d352?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80';
  genreList.add(newGenre);

  newGenre = GenreClass();
  newGenre.genreName = 'Science';
  newGenre.imageUrl =
      'https://images.unsplash.com/photo-1567427018141-0584cfcbf1b8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80';
  genreList.add(newGenre);

  newGenre = GenreClass();
  newGenre.genreName = 'Technology';
  newGenre.imageUrl =
      'https://images.unsplash.com/photo-1485827404703-89b55fcc595e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80';
  genreList.add(newGenre);

  return genreList;
}

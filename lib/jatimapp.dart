class Recipe {
  String label;
  String imageUrl; // Mengubah ImageUrl menjadi imageUrl sesuai dengan gaya penulisan yang umum pada Dart

  int porsi;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.porsi, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
    '1. Soto Lamongan', 
    'assets/1.jpeg',
    4,
    [
      Ingredient(500, 'gram', 'daging ayam, potong-potong'),
      Ingredient(2, 'liter', 'air'),
      Ingredient(2, 'batang', 'serai, memarkan'),
    ],
    ), //Recipe
    Recipe(
    '2. Rawon', 
    'assets/2.jpeg',
    2,
    [
      Ingredient(500, 'gram', 'daging sapi'),
      Ingredient(2, 'liter', 'air'),
      Ingredient(4, 'lembar', 'daun salam'),
    ],
    ),//Recipe
    Recipe(
    '3. Tahu Campur', 
    'assets/3.jpeg',
    1,
    [
      Ingredient(300, 'gram', 'tahu'),
      Ingredient(200, 'gram', 'bihun'),
      Ingredient(100, 'gram', 'tauge'),
    ],
    ),//Recipe
    Recipe(
    '4. Lontong Kupang', 
    'assets/4.jpeg',
    24,
    [
      Ingredient(300, 'gram', 'lontong'),
      Ingredient(200, 'gram', 'kerang kupang'),
      Ingredient(100, 'gram', 'tauge'),
    ],
    ),//Recipe
    Recipe(
    '5. Rujak Cingur', 
    'assets/5.jpeg',
    1,
    [
      Ingredient(300, 'gram', 'daging cingur'),
      Ingredient(200, 'gram', 'tauge'),
      Ingredient(1, 'buah', 'timun, mangga muda, tahu'),
    ],
    ),//Recipe
    Recipe(
    '6. Sate Klopo', 
    'assets/6.jpeg',
    4,
    [
      Ingredient(500, 'gram', 'daging ayam atau sapi'),
      Ingredient(200, 'gram', 'kelapa parut'),
      Ingredient(15, 'batang', 'tusukan sate'),
    ],
    ),//Recipe
    Recipe(
    '7. Tahu Tek ', 
    'assets/7.jpeg',
    4,
    [
      Ingredient(500, 'gram', 'tahu putih'),
      Ingredient(200, 'gram', 'tauge'),
      Ingredient(2, 'buah', 'telur'),
    ],
    ),//Recipe
    Recipe(
    '8. Pecel Madiun', 
    'assets/8.jpeg',
    4,
    [
      Ingredient(200, 'gram', 'kacang panjang'),
      Ingredient(200, 'gram', 'kacang tanah'),
      Ingredient(2, 'buah', 'tahu'),
    ],
    ),//Recipe
    Recipe(
    '9. Lontong Balap', 
    'assets/9.jpeg',
    4,
    [
      Ingredient(200, 'gram', 'lontong'),
      Ingredient(100, 'gram', 'tahu pong'),
      Ingredient(200, 'gram', 'tauge'),
    ],
    ),//Recipe
    Recipe(
    '10. Lontong Kari Ayam', 
    'assets/10.jpeg',
    4,
    [
      Ingredient(500, 'gram', 'ayam'),
      Ingredient(400, 'ml', 'santan kental'),
      Ingredient(2, 'lembar', 'daun salam'),
    ],
    ),//Recipe
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);
}

class Ingredient {
  String name;
  String measure;
  double quantity;

  Ingredient(this.quantity, this.measure, this.name);
}

List<Recipe> recipes = [
  Recipe(
      'Recipe 1', 'assets/image1.jpg', 4, [Ingredient(1, 'box', 'spaghetti')]),
  Recipe(
      'Recipe 2', 'assets/image1.jpg', 4, [Ingredient(1, 'box', 'spaghetti')]),
  Recipe(
      'Recipe 3', 'assets/image1.jpg', 4, [Ingredient(1, 'box', 'spaghetti')]),
  Recipe(
      'Recipe 4', 'assets/image1.jpg', 4, [Ingredient(1, 'box', 'spaghetti')]),
  Recipe(
      'Recipe 5', 'assets/image1.jpg', 4, [Ingredient(1, 'box', 'spaghetti')]),
  Recipe(
      'Recipe 6', 'assets/image1.jpg', 4, [Ingredient(1, 'box', 'spaghetti')]),
  Recipe(
      'Recipe 7', 'assets/image1.jpg', 4, [Ingredient(1, 'box', 'spaghetti')]),
  Recipe(
      'Recipe 8', 'assets/image1.jpg', 4, [Ingredient(1, 'box', 'spaghetti')]),
  Recipe(
      'Recipe 9', 'assets/image1.jpg', 4, [Ingredient(1, 'box', 'spaghetti')]),
];

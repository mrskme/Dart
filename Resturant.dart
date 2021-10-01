void main() {
  var recipes = Recipes();
  recipes.salad.show();
}

class Recipes {
  Recipe salad = Recipe("Salad", [Ingredients.tomato, Ingredients.onion]);
  Recipe burger = Recipe("Hamburger",
      [Ingredients.burgerMeat, Ingredients.onion, Ingredients.tomato]);
}

class Recipe {
  String name;
  List<Ingredient> ingredients;
  int totalPrice;

  Recipe(this.name, this.ingredients) {
    totalPrice = _sumIngredients();
  }

  void show() {
    print(name + "\n");
    ingredients.forEach((ingredient) {
      ingredient.showName();
    });
    print("price: " + totalPrice.toString());
  }

  int _sumIngredients() {
    int price = 0;
    ingredients.forEach((ingredient) {
      price += ingredient.price;
    });
    return price;
  }
}

class Ingredients {
  static Ingredient tomato = Ingredient("Tomato", 6);
  static Ingredient burgerMeat = Ingredient("Burger meat", 20);
  static Ingredient onion = Ingredient("Onion", 5);

  static List<Ingredient> all = [
    tomato,
    burgerMeat,
    onion,
  ];
}

class Ingredient {
  String name;
  int price;

  Ingredient(this.name, this.price);

  void showName() {
    print(name + ", ");
  }
}

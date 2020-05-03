enum CoffeeMachine { frenchPress, dripMachine }

class CoffeeConverter {
  CoffeeMachine cm;
  int partsWaterToCoffee;
  int _cups = 0;

  static const double GRAMS_IN_CUP_OF_WATER = 177.42;

  CoffeeConverter(this.cm) {
    if (cm == CoffeeMachine.frenchPress) {
      partsWaterToCoffee = 14;
    } else {
      partsWaterToCoffee = 17;
    }
  }

  set cups(int c) {
    _cups = c;
  }

  double get getGramsCoffee {
    return _cups * GRAMS_IN_CUP_OF_WATER / partsWaterToCoffee;
  }

  double get getGramsWater {
    return _cups * GRAMS_IN_CUP_OF_WATER / partsWaterToCoffee;
  }

  String get grindSize {
    if (cm == CoffeeMachine.frenchPress)
      return "coarse";
    else
      return "medium";
  }
}

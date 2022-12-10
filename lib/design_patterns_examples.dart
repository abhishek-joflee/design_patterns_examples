//! abstract classes
abstract class Beverage {
  external final String name;
  double cost();
}

abstract class BeverageAddons extends Beverage {
  late final Beverage beverage;
}

//! concrete implementation of above abstract classes
//* ------ All the Beverage implementation ------
class Espresso implements Beverage {
  @override
  double cost() => 1.5;

  @override
  String get name => 'Espresso(1.5)';
}

class Cocoa implements Beverage {
  @override
  double cost() => 2;

  @override
  String get name => 'Cocoa(2)';
}

//* ------ All the Beverage Addons implementation ------
class CaramelAddon implements BeverageAddons {
  @override
  Beverage beverage;

  CaramelAddon(this.beverage);

  @override
  double cost() => beverage.cost() + 1;

  @override
  String get name => 'Caramel(${beverage.name} + 1)';
}

class ChocolateAddon implements BeverageAddons {
  @override
  Beverage beverage;
  ChocolateAddon(this.beverage);

  @override
  double cost() => beverage.cost() + 1.2;

  @override
  String get name => 'Chocolate(${beverage.name} + 1.2)';
}

class CupsAddon implements BeverageAddons {
  @override
  Beverage beverage;

  final CupSize cupSize;

  CupsAddon({
    required this.beverage,
    required this.cupSize,
  });

  @override
  double cost() => beverage.cost() * cupSize.multiple;

  @override
  String get name =>
      '${beverage.name} * ${cupSize.displayName}(${cupSize.multiple})';
}

//! enums
enum CupSize {
  regular('Regular', 1),
  large('Large', 1.5),
  extraLarge('Extra Large', 2),
  ;

  final String displayName;
  final double multiple;
  const CupSize(this.displayName, this.multiple);
}

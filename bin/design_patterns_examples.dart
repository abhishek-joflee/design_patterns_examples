import 'package:design_patterns_examples/design_patterns_examples.dart';

void main(List<String> arguments) {
  Beverage order1 = Espresso();
  order1 = ChocolateAddon(order1);
  order1 = CupsAddon(beverage: order1, cupSize: CupSize.extraLarge);
  print('order1: ${order1.name} = total cost: ${order1.cost()}');

  Beverage order2 = Cocoa();
  order2 = CaramelAddon(order2);
  order2 = ChocolateAddon(order2);
  order2 = ChocolateAddon(order2);
  order2 = CupsAddon(beverage: order2, cupSize: CupSize.large);
  print('order2: ${order2.name} = total cost: ${order2.cost()}');
}

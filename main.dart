void main() {
  var menu = {
    'burger': 6.5,
    'pizza': 5,
    'water': 1.5,
  };

  menu['cholocolateCake'] = 3;
  menu['water'] = 0.75;

  void printMenu() {
    print('Menu:');
    print('');
    for (var element in menu.entries) {
      print('${element.key} -> ${element.value}KD');
    }
  }

  printMenu();

  const order = ['pizza', 'water'];

  void calculateOrder(List<String> order, var menu) {
    num total = 0;
    for (String item in order) {
      if (menu[item] == null) {
        return print('$item is not on the menu');
      }
      total += menu[item];
    }
    print('Total: KD${total}');
  }

  const wrongOrder = ['rice', 'pizza'];
  calculateOrder(order, menu);
  calculateOrder(wrongOrder, menu);
}

class CartService {
  List<Item> cartItems = [];
  int get total => cartItems.fold(0, (sum, item) => sum + item.price);
  void add(Item item) {
    cartItems.add(item);
  }

  void remove(Item item) {
    cartItems.remove(item);
  }

  void clearCart() {
    cartItems.clear();
  }
}

class Item {
  final String name;
  final int price;
  Item(this.name, this.price);
}

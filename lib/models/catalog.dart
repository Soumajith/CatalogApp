class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Iphone 12 pro",
        desp: "Apple Iphone 12th Gen",
        price: 999,
        color: "#33505a",
        image: "https://m.media-amazon.com/images/I/71xkMA+gvYL._SX679_.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desp;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desp,
      required this.price,
      required this.color,
      required this.image});
}

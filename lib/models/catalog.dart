import 'dart:convert';

class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desp: "Apple iPhone 12th generation",
        price: 9999,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"),
    Item(
        id: 2,
        name: "Pixel 5",
        desp: "Google Pixel phone 5th generation",
        price: 6999,
        color: "#00ac51",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd0JhwLvm_uLDLc-la7hK9WyVpe9naJFcebKfhcICiq2KtvXDePNAU_9QO06LPcQ0K0fLByc7m&usqp=CAc"),
    Item(
        id: 3,
        name: "M1 Macbook Air",
        desp: "Apple Macbook air with apple silicon",
        price: 10999,
        color: "#e0bfae",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMOMstwtmLnjFb3NHiDJ_kcQnueNVH-rv_3ps96HZmXlFumKWaiBqq_L4Uoyx3iFiNTrXNEbyB&usqp=CAc"),
    Item(
        id: 4,
        name: "Playstation 5",
        desp: "Sony Playstation 5th generation",
        price: 4999,
        color: "#544ee4",
        image:
            "https://i.gadgets360cdn.com/products/large/sony-ps5-649x800-1592631239.jpeg?downsize=*:360"),
    Item(
        id: 5,
        name: "Airpods Pro",
        desp: "Apple Aipods Pro 1st generation",
        price: 1999,
        color: "#e3e4e9",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQROEs084z65psoo06zYl5R0tUzywOVKVQZzmzqCj3PDP1vVJTWv3gGwGMFENSy4qV4n7sEQjE&usqp=CAc"),
    Item(
        id: 6,
        name: "iPad Pro",
        desp: "Apple iPad Pro 2020 edition",
        price: 7999,
        color: "#f73984",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNzUeRQ5uH7E3hpECib8qxdhfHv6SnUGT7mOsew_xiOoqRR7ZpdH-TQ4J6-HuIEfqHimYyPXWH&usqp=CAc"),
    Item(
        id: 7,
        name: "Galaxy S21 Ultra",
        desp: "Samsung Galaxy S21 Ultra 2021 edition",
        price: 12999,
        color: "#1c1c1c",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT_PZcc0wicVYR992s5QCIDLYy8t-z-9kibTUdWZBN2sd86aaqdAJfhvxAwZNWV9wfdzDikpr1&usqp=CAc"),
    Item(
        id: 8,
        name: "Galaxy S21",
        desp: "Samsung Galaxy S21 2021 edition",
        price: 8999,
        color: "#7c95eb",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBNHd7FwarbxA1xdMFt24KazjcR4dWPH_t_T5dz4YNK1s7rJAQ8gOIuR_NRw6eeiQgFhbZ9sAN&usqp=CAc")
  ];
}

class Item {
  final int id;
  final String name;
  final String desp;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desp,
    required this.price,
    required this.color,
    required this.image,
  });

  Item copyWith({
    int? id,
    String? name,
    String? desp,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desp: desp ?? this.desp,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desp': desp,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      desp: map['desp'] as String,
      price: map['price'] as num,
      color: map['color'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desp: $desp, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desp == desp &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desp.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}

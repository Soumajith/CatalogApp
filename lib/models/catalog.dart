import 'dart:convert';

class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desp: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-blue-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1604021661000"),
    Item(
        id: 2,
        name: "Pixel 5",
        desp: "Google Pixel phone 5th generation",
        price: 699,
        color: "#00ac51",
        image:
            "https://www.telstra.com.au/content/dam/tcom/lego/2020/plans-devices/mobiles/google-pixel-5/shared-google-pixel-5-black-05-900x1200.png"),
    Item(
        id: 3,
        name: "M1 Macbook Air",
        desp: "Apple Macbook air with apple silicon",
        price: 1099,
        color: "#e0bfae",
        image:
            "https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP825/macbookair.png"),
    Item(
        id: 4,
        name: "Playstation 5",
        desp: "Sony Playstation 5th generation",
        price: 499,
        color: "#544ee4",
        image:
            "https://i1.wp.com/freepngimages.com/wp-content/uploads/2020/07/Playstation-5-games-console-transparent-background-png-image.png?fit=1000%2C1000"),
    Item(
        id: 5,
        name: "Airpods Pro",
        desp: "Apple Aipods Pro 1st generation",
        price: 199,
        color: "#e3e4e9",
        image:
            "https://crdms.images.consumerreports.org/c_lfill,w_598/prod/products/cr/models/400116-wireless-portable-headphones-apple-airpods-pro-10009323.png"),
    Item(
        id: 6,
        name: "iPad Pro",
        desp: "Apple iPad Pro 2020 edition",
        price: 799,
        color: "#f73984",
        image:
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-12-select-wifi-silver-202003_FMT_WHH?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1583551131102"),
    Item(
        id: 7,
        name: "Galaxy S21 Ultra",
        desp: "Samsung Galaxy S21 Ultra 2021 edition",
        price: 1299,
        color: "#1c1c1c",
        image:
            "https://lh3.googleusercontent.com/qRQPjHrhRVIs-xnfNSyiPXOH2vH97ylMacgbTKebqJtRfNH3LlYo8pN-5igsLDWUH62tGl5zNpTsl5xd8SprzGmXoCEmWFOi2-2cQVGS-r3PaRXHt62DmJHq-jrYX0UQvWZ9BA=s800-c"),
    Item(
        id: 8,
        name: "Galaxy S21",
        desp: "Samsung Galaxy S21 2021 edition",
        price: 899,
        color: "#7c95eb",
        image: "https://bit.ly/samsungphotosss")
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

import 'dart:convert';

class CatalogModel {
  static var items = [
    Item(
        id: 001,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12 Pro (256GB) - Green",
        price: 1200,
        color: "#33505a",
        image: "https://m.media-amazon.com/images/I/71MHTD3uL4L.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.image,
  });

  Item copyWith({
    int id,
    String name,
    String desc,
    num price,
    String color,
    String image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'desc': desc});
    result.addAll({'price': price});
    result.addAll({'color': color});
    result.addAll({'image': image});
  
    return result;
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      desc: map['desc'] ?? '',
      price: map['price'] ?? 0,
      color: map['color'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Item &&
      other.id == id &&
      other.name == name &&
      other.desc == desc &&
      other.price == price &&
      other.color == color &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      desc.hashCode ^
      price.hashCode ^
      color.hashCode ^
      image.hashCode;
  }
}

class CatalogModel{
  static final items=[
    Item(
  id: 001,
  name: "iPhone 12 Pro",
  desc: "Apple iPhone 12 Pro (256GB) - Green",
  price: 1200,
  color: "#33505a",
  image: "https://m.media-amazon.com/images/I/71MHTD3uL4L.jpg"
  )];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

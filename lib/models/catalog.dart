class CatalogModel {
  static final item = [
    Item(
        id: "Deep01",
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12 generation",
        price: 999,
        color: "#33505a",
        imgurl: ""),
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imgurl;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imgurl});
}

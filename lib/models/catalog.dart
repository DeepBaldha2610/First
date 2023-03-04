class CatalogModel {
  static final item = [
    Item(
        id: 01,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12 generation",
        price: 999,
        color: "#33505a",
        imgurl: "https://rukminim1.flixcart.com/image/416/416/kg8avm80/mobile/u/q/d/apple-iphone-12-pro-dummyapplefsn-original-imafwgbrbzjgug4j.jpeg?q=70"),
  ];
}

class Item {
  final int id;
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

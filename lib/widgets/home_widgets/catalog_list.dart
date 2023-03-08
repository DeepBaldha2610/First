import 'package:flutter/material.dart';
import 'package:login/pages/home_deatails_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import '../themes.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.item.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.item[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDeatailPage(catalog: catalog),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                catalog.name.text.xl.color(MyTheam.darkBluishColor).bold.make(),
                catalog.desc.text.medium.textStyle(context.captionStyle).make(),
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.xl2.bold.make(),
                    ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              HomeDeatailPage(catalog: catalog),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyTheam.darkBluishColor),
                      ),
                      child: "Buy".text.make(),
                    ),
                  ],
                ).pOnly(right: 12),
              ],
            ),
          ),
        ],
      ),
    ).white.rounded.square(150).make().py16();
  }
}
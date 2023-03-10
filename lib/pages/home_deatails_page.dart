// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:login/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDeatailPage extends StatelessWidget {
  final Item catalog;

  const HomeDeatailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.xl4.red800.bold.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(MyTheam.darkBluishColor),
              ),
              child: "Add to cart".text.xl.make(),
            ).wh(125, 50).cornerRadius(20),
          ],
        ).p32(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 20,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .color(MyTheam.darkBluishColor)
                          .bold
                          .make(),
                      catalog.desc.text.xl
                          .textStyle(context.captionStyle)
                          .make(),
                      Expanded(
                        child:
                            "Magna incididunt magna et aute minim adipisicing in ea. Nostrud sit ad in aute sunt voluptate culpa pariatur sit exercitation. Non est excepteur sit pariatur proident commodo Lorem laboris anim est. Voluptate aliqua aliqua aute elit."
                                .text
                                .lg
                                .textStyle(context.captionStyle)
                                .make()
                                .p24(),
                      ),
                    ],
                  ).py64(),
                ),
              ),
            ),
          ],
        ).centered(),
      ),
    );
  }
}

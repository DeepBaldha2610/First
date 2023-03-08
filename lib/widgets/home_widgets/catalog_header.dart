import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheam.darkBluishColor).make(),
        "Trending Prroducts".text.xl2.make(),
      ],
    );
  }
}
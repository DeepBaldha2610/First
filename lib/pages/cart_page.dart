import 'package:flutter/material.dart';
import 'package:login/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheam.creamcolor,
      appBar: AppBar(
        title: "cart".text.xl.makeCentered().pOnly(right: 45),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}

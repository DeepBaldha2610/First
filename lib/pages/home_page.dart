import 'package:flutter/material.dart';
import 'package:login/models/catalog.dart';
import 'package:login/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 80),
          child: Text(
            "Deep Baldha",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
      // body: ListView.builder(
      //   itemCount: CatalogModel.item.length,
      //   itemBuilder: (context, index){
      //     return CatalogWidget();
      //   }
      // ),
      drawer: MyDrawer(),
    );
  }
}

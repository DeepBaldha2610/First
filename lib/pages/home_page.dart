import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:login/models/catalog.dart';
import 'package:login/widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.item =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.item != null && CatalogModel.item.isNotEmpty)
            ? GridView.builder(
                itemCount: CatalogModel.item.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.item[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: GridTile(
                      header: Container(
                        // ignore: sort_child_properties_last
                        child: Text(
                          item.name,
                          style: const TextStyle(color: Colors.white),
                        ),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(color: Colors.teal),
                      ),

                      footer: Container(
                        // ignore: sort_child_properties_last
                        child: Text(
                          item.price.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(color: Colors.black),
                      ),
                      child: Image.network(item.image),
                    ),
                  );
                },
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}

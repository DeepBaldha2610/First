import 'package:flutter/material.dart';
import 'package:login/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Deep Baldha"),
        ),
        body: Column(
          children: const [
            Center(
              child: Text(
                "Deep",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        drawer: MyDrawer(),
      );
  }
}

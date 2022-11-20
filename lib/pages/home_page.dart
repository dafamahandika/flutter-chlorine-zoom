import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text("Hello Dafa Mahandika"),
              const SizedBox(
                height: 16,
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                children: [
                  _ItemMenu(context, "Menu 1"),
                  _ItemMenu(context, "Menu 2"),
                  _ItemMenu(context, "Menu 3"),
                  _ItemMenu(context, "Menu 4"),
                  _ItemMenu(context, "Menu 5"),
                  _ItemMenu(context, "Menu 6"),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Artikel",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  _itemArticle(context, "Artikel 1",
                      "Ini merupakan artikel yang pertama"),
                  _itemArticle(context, "Artikel 2",
                      "Ini merupakan artikel yang kedua"),
                  _itemArticle(context, "Artikel 3",
                      "Ini merupakan artikel yang ketiga"),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _ItemMenu(BuildContext context, String title) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(child: Text(title)),
        ),
      ),
    );
  }

  _itemArticle(BuildContext context, String title, String desc) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(desc,
                    style: const TextStyle(
                      fontSize: 13,
                    ))
              ],
            )),
      ),
    );
  }
}

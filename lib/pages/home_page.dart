import 'package:flutter/material.dart';
import 'package:flutter_1_dafamahandika/data/constant.dart';
import 'package:flutter_1_dafamahandika/models/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // // late Profile profile;

  // @override
  // void initState() {
  //   // profile = Profile.fromJson(jsonProfile);
  //   super.initState();
  // }

  late Profile profile;
  @override
  void initState() {
    profile = Profile.fromJson(jsonProfile);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         Navigator.pushReplacement(context,
        //             MaterialPageRoute(builder: (context) => LoginPage()));
        //       },
        //       icon: const Icon(Icons.exit_to_app))
        // ],
      ),
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
              Container(child: Text("Hello ${profile.displayName}")),
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
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 20,
                      color: Colors.lightBlue,
                    ),
                  ),
                  Flexible(
                      child: Container(
                    height: 20,
                    color: Colors.lightBlue.shade200,
                  )),
                ],
              ),
              // const SizedBox(
              //   height: 8,
              // ),
              const Text(
                "Artikel",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  5,
                  (index) => _itemArticle(context, "Artikel $index",
                      "Ini merupakan artikel yang ke $index"),
                ),
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
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                desc,
                style: const TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

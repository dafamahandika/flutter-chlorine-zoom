import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 259,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 154,
                color: Colors.blue,
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, top: 40),
                  child: Text(
                    "My Profile",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                bottom: 24,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(70),
                      ),
                      child: SizedBox(
                        width: 140,
                        height: 140,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: Image.asset(
                            "assets/dafa.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 25,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dafa Mahandika",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Text(
                            "Junior Fluter Developer",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )

              //   Positioned(
              //     child: Padding(
              //       padding: const EdgeInsets.only(left: 16, top: 48),
              //       child: Text(
              //         "Profile",
              //         style: TextStyle(
              //             fontSize: 18,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.white),
              //       ),
              //     ),
              //   ),
              //   Card(
              //     shape:
              //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              //     child: SizedBox(
              //       width: 100,
              //       height: 100,
              //       child: Image.asset(
              //         "assets/dafa.jpg",
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              TabBar(
                controller: tabController,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.document_scanner,
                      color: Colors.grey,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.person_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.cast_for_education,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Container(
                      child: Text("Page 1"),
                    ),
                    Container(
                      child: Text("Page 2"),
                    ),
                    Container(
                      child: Text("Page 3"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

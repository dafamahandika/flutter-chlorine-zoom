import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          color: Colors.blue,
        ),
        Positioned(
          left: 24,
          bottom: 24,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: SizedBox(
              width: 100,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/dafa.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
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
    );
  }
}

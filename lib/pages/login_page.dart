import 'package:flutter/material.dart';
import 'package:flutter_1_dafamahandika/models/auth.dart';
import 'package:flutter_1_dafamahandika/pages/main_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Stack(
      children: [
        // Image.asset(
        //   "assets/bg.jpeg",
        //   width: MediaQuery.of(context).size.width,
        //   height: MediaQuery.of(context).size.height,
        // ),
        SingleChildScrollView(
          // child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(height: 32),
                      const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        "Username",
                        style: TextStyle(fontSize: 16),
                      ),
                      TextFormField(
                        controller: _usernameController,
                        keyboardType: TextInputType.text,
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        "Password ",
                        style: TextStyle(fontSize: 16),
                      ),
                      TextFormField(
                        controller: _passwordController,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          if (_usernameController.text == "" ||
                              _passwordController.text == "") {
                            Fluttertoast.showToast(
                              msg: "Harap Login !!!",
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 2,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0,
                              // webPosition: center
                            );

                            return;
                          }
                          Auth auth = Auth(
                              username: _usernameController.text,
                              password: _passwordController.text);

                          if (!auth.checkLogin()) {
                            Fluttertoast.showToast(
                                msg: "Username dan Password Salah",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 2,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16);

                            return;
                          }
                          if (auth.checkLogin()) {
                            Fluttertoast.showToast(
                                msg: "Login Berhasil",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 2,
                                backgroundColor: Colors.green,
                                textColor: Colors.white,
                                fontSize: 16);

                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainPage()));
                          }

                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => MainPage()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                            child: Text(
                          "Lupa Password",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          // ),
        ),
        // Positioned(
        //   bottom: 0,
        //   child: Card(
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text("Lupa Password"),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }

  _showToastMsg(String msg) {
    Fluttertoast.showToast(
        msg: "Harap Login",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.white,
        textColor: Colors.white,
        fontSize: 16);
  }
}

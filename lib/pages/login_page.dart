import 'package:flutter/material.dart';
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

  // FToast fToast;
  // @override
  // void initState() {
  //   super.initState();
  //   fToast: FToast();
  //   fToast.init(context);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 32),
            const Center(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                  return;
                }

                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
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
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showSuccessMsg(String msg) {
    Fluttertoast.showToast(
        msg: "Login Success",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16);
  }

  _showErrorMsg() {}
}

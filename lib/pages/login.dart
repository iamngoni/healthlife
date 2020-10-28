import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_life/constants/index.dart';
import 'package:health_life/pages/base.dart';
import 'package:health_life/pages/signup.dart';

class HealthLifeLoginPage extends StatefulWidget {
  @override
  _HealthLifeLoginPageState createState() => _HealthLifeLoginPageState();
}

class _HealthLifeLoginPageState extends State<HealthLifeLoginPage> {
  var _emailController = new TextEditingController();
  var _passwordController = new TextEditingController();
  var _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: kHeight(context),
            width: kWidth(context),
            child: Stack(
              children: [
                Container(
                  height: kHeight(context),
                  width: kWidth(context),
                  child: Column(
                    children: [
                      Container(
                        height: kHeight(context) * 0.55,
                        width: kWidth(context),
                        color: midnightBlue,
                        child: Center(
                          child: Text(
                            "HealthLife",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: kHeight(context) * 0.45,
                        width: kWidth(context),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "New user?",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            HealthLifeSignUpPage(),
                                      ),
                                    ),
                                    child: Text(
                                      "Create Account",
                                      style: TextStyle(
                                        color: midnightBlue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 10,
                  right: 10,
                  top: kHeight(context) * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 10.0,
                    ),
                    child: Container(
                      height: kHeight(context) * 0.28,
                      width: kWidth(context) * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Card(
                        elevation: 12.0,
                        child: Container(
                          width: kWidth(context) * 0.6,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: Form(
                                    key: _key,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 3.0,
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.all(3.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: midnightBlue,
                                              ),
                                            ),
                                            child: TextFormField(
                                              controller: _emailController,
                                              decoration: InputDecoration(
                                                labelText: "Email Address",
                                                border: InputBorder.none,
                                              ),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 3.0,
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.all(3.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: midnightBlue,
                                              ),
                                            ),
                                            child: TextFormField(
                                              controller: _passwordController,
                                              decoration: InputDecoration(
                                                labelText: "Password",
                                                border: InputBorder.none,
                                              ),
                                              keyboardType: TextInputType.text,
                                              obscureText: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: kHeight(context) * 0.65,
                  right: 55,
                  child: GestureDetector(
                    onTap: () async {
                      if (_emailController.text == "" ||
                          _emailController.text == null) {
                        var snackBar = SnackBar(
                          content: Text("Email cannot be null"),
                        );
                        Scaffold.of(context).showSnackBar(snackBar);
                      } else if (_passwordController.text == "" ||
                          _passwordController.text == null) {
                        var snackBar = SnackBar(
                          content: Text("Password cannot be null"),
                        );
                        Scaffold.of(context).showSnackBar(snackBar);
                      } else {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HealthLifeBase(),
                          ),
                        );
                      }
                    },
                    child: CircleAvatar(
                      radius: 30,
                      foregroundColor: Colors.white,
                      backgroundColor: midnightBlue,
                      child: Icon(Icons.arrow_forward_rounded),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

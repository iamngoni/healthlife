import 'package:flutter/material.dart';
import 'package:health_life/constants/index.dart';
import 'package:health_life/pages/login.dart';

class HealthLifeSignUpPage extends StatefulWidget {
  @override
  _HealthLifeSignUpPageState createState() => _HealthLifeSignUpPageState();
}

class _HealthLifeSignUpPageState extends State<HealthLifeSignUpPage> {
  var _nameController = new TextEditingController();
  var _emailController = new TextEditingController();
  var _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                                  "Have an account?",
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
                                          HealthLifeLoginPage(),
                                    ),
                                  ),
                                  child: Text(
                                    "Log into your account",
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
                top: kHeight(context) * 0.35,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10.0,
                  ),
                  child: Container(
                    height: kHeight(context) * 0.38,
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
                                            controller: _nameController,
                                            decoration: InputDecoration(
                                              labelText: "Full Name",
                                              border: InputBorder.none,
                                            ),
                                            keyboardType: TextInputType.name,
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
                top: kHeight(context) * 0.70,
                right: 55,
                child: CircleAvatar(
                  radius: 30,
                  foregroundColor: Colors.white,
                  backgroundColor: midnightBlue,
                  child: Icon(Icons.arrow_forward_rounded),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:health_life/constants/index.dart';
import 'package:health_life/pages/login.dart';

class HealthLifeSplash extends StatefulWidget {
  @override
  _HealthLifeSplashState createState() => _HealthLifeSplashState();
}

class _HealthLifeSplashState extends State<HealthLifeSplash> {
  _navigateToLogin() => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HealthLifeLoginPage(),
        ),
      );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: kHeight(context),
        width: kWidth(context),
        child: Stack(
          children: [
            Container(
              height: kHeight(context),
              width: kWidth(context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/splash_1.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Container(
                  color: Colors.black.withOpacity(0),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: kHeight(context),
              width: kWidth(context),
              child: Text(
                "HealthLife",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

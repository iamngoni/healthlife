import 'package:flutter/material.dart';
import 'package:health_life/constants/functions.dart';

class HealthLifeHomePage extends StatefulWidget {
  @override
  _HealthLifeHomePageState createState() => _HealthLifeHomePageState();
}

class _HealthLifeHomePageState extends State<HealthLifeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: kHeight(context),
        width: kWidth(context),
      ),
    );
  }
}

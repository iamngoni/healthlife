import 'package:flutter/material.dart';
import 'package:health_life/constants/functions.dart';
import 'package:health_life/pages/home.dart';

class HealthLifeBase extends StatefulWidget {
  @override
  _HealthLifeBaseState createState() => _HealthLifeBaseState();
}

class _HealthLifeBaseState extends State<HealthLifeBase> {
  var _pages = [HealthLifeHomePage()];
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: kHeight(context),
        width: kWidth(context),
        child: Stack(
          children: [
            _pages[index],
            Positioned(
              left: 0,
              right: 0,
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15.0,
                ),
                child: Container(
                  height: 70,
                  width: kWidth(context),
                  child: Card(
                    elevation: 15.0,
                    color: Color(0xFF6B00F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.language,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.info,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.account_circle,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ],
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
}

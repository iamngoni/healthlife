import 'package:flutter/material.dart';
import 'package:health_life/constants/functions.dart';

class HealthLifeHomePage extends StatefulWidget {
  @override
  _HealthLifeHomePageState createState() => _HealthLifeHomePageState();
}

class _HealthLifeHomePageState extends State<HealthLifeHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xFFF5F2FA),
        height: kHeight(context),
        width: kWidth(context),
        child: Column(
          children: [
            Container(
              height: kHeight(context) * 0.35,
              width: kWidth(context),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25.0,
                      bottom: 15.0,
                    ),
                    child: Text(
                      "Hi, Username",
                      style: TextStyle(
                        color: Color(0xFF130038),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting",
                    style: TextStyle(
                      color: Color(0xFF26064B),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      bottom: 0,
                      left: 15.0,
                      right: 15.0,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: kWidth(context),
                          height: 70,
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 10.0,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Search here...",
                                  labelStyle: TextStyle(
                                    color: Color(0xFFBABABA),
                                  ),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 10,
                          child: Container(
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF6B00F2),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: MaterialButton(
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: kHeight(context) * 0.65,
                width: kWidth(context),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "News",
                            style: TextStyle(
                              color: Color(0xFF130038),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "View All",
                            style: TextStyle(
                              color: Color(0xFFBABABA),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

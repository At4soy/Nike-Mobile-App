import 'package:flutter/material.dart';
import 'package:nikeapp/homepage.dart';

class JustDoIt extends StatefulWidget {
  const JustDoIt({super.key});

  @override
  State<JustDoIt> createState() => _JustDoItState();
}

class _JustDoItState extends State<JustDoIt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        backgroundColor: Color(0xff76ABAE),
        title: GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
              (route) => false,
            );
          },
          child: Image.asset(
            "lib/assets/images/logo-removed-color.png",
            width: 125,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              children: [
                // GIRIS SAYFASI BUTTON
                // GIRIS SAYFASI BUTTON
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Text(
                        "JUST",
                        style: TextStyle(
                            color: Color(0xff222831),
                            fontSize: 110,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60, top: 110),
                      child: Text(
                        "DO IT",
                        style: TextStyle(
                            color: Color(0xff222831),
                            fontSize: 90,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 100, left: 25),
                            child: Card(
                              child: Image.asset(
                                "lib/assets/images/mmw.png",
                                width: 300,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 350, left: 200),
                            child: Card(
                              child: Image.asset(
                                "lib/assets/images/alphafly3running.png",
                                width: 200,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 0, right: 200),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Card(
                                child: Image.asset(
                                  "lib/assets/images/flyfree.png",
                                  width: 125,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "\$900",
                          style: TextStyle(
                            color: Color(0xff222831),
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
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

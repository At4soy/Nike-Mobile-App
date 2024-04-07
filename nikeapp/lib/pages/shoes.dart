import 'package:flutter/material.dart';
import 'package:nikeapp/homepage.dart';
import 'package:nikeapp/pages/other.dart';
import 'package:nikeapp/pages/tshirt.dart';

class Shoes extends StatefulWidget {
  const Shoes({super.key});

  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        backgroundColor: Color(0xff76ABAE),
        title: Image.asset(
          "lib/assets/images/logo-removed-color.png",
          width: 125,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 20),
            child: Column(
              children: [
                // GIRIS SAYFASI BUTTON
                // GIRIS SAYFASI BUTTON
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: GestureDetector(
                          onTap: () {},
                          child:
                              Image.asset("lib/assets/images/nikemodel1.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "JUST",
                          style: TextStyle(
                              color: Color(0xff222831),
                              fontSize: 50,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60, top: 50),
                        child: Text(
                          "DO IT",
                          style: TextStyle(
                              color: Color(0xff222831),
                              fontSize: 50,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
                // KATEGORİ BUTTON
                // KATEGORİ BUTTON
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                            (route) => false,
                          );
                        },
                        child: Text("Popular"),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff76ABAE)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 17)),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Shoes"),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff31363F)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 17)),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Tshirt(),
                            ),
                            (route) => false,
                          );
                        },
                        child: Text("Tshirt"),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff76ABAE)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 17)),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Other(),
                            ),
                            (route) => false,
                          );
                        },
                        child: Text("Other"),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff76ABAE)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 17)),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              children: [
                                Card(
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                      "lib/assets/images/lebronxxi.png",
                                      width: 200,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Lebron XXI",
                                  style: TextStyle(
                                    color: Color(0xff222831),
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "\$200",
                                  style: TextStyle(
                                    color: Color(0xff222831),
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Column(
                              children: [
                                Card(
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                      "lib/assets/images/freemetcon5workout.png",
                                      fit: BoxFit.cover,
                                      width: 200,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Free Metcon 5",
                                  style: TextStyle(
                                    color: Color(0xff222831),
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "\$120",
                                  style: TextStyle(
                                    color: Color(0xff222831),
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Column(
                            children: [
                              Card(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    "lib/assets/images/alphafly3running.png",
                                    width: 200,
                                  ),
                                ),
                              ),
                              Text(
                                "Alphafly 3",
                                style: TextStyle(
                                  color: Color(0xff222831),
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "\$285",
                                style: TextStyle(
                                  color: Color(0xff222831),
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

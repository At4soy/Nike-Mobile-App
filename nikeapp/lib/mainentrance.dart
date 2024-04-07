import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nikeapp/homepage.dart';

class MainEntrance extends StatefulWidget {
  const MainEntrance({
    super.key,
  });

  @override
  State<MainEntrance> createState() => _MainEntranceState();
}

class _MainEntranceState extends State<MainEntrance> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
        (route) => false,
      );
    });
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: Duration(milliseconds: 2000),
                  child: Image.asset(
                    'lib/assets/images/logo-removed.png',
                    width: 350,
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

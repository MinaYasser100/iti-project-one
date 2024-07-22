import 'dart:async';

import 'package:flutter/material.dart';
import 'package:one_project_iti/splash/splash_two_view.dart';

class SplashOneView extends StatefulWidget {
  const SplashOneView({super.key});

  @override
  State<SplashOneView> createState() => _SplashOneViewState();
}

class _SplashOneViewState extends State<SplashOneView> {
  String logo = 'assets/images/coffee.jpg';
  @override
  void initState() {
    waitAndChangeLogo();
    super.initState();
  }

  void waitAndChangeLogo() async {
    await Future.delayed(const Duration(seconds: 3)).then((value) {
      logo = 'assets/images/download.jpg';
      setState(() {});
    });
    await Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const SplashTwoView(),
        ),
        (route) => false,
      );
    });

    // const oneSec = Duration(seconds: 1);
    // Timer.periodic(oneSec, (Timer t) {
    //   if (logo == 'assets/images/coffee.jpg') {
    //     logo = 'assets/images/download.jpg';
    //     setState(() {});
    //   } else {
    //     logo = 'assets/images/coffee.jpg';
    //     setState(() {});
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              logo,
              height: 270,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

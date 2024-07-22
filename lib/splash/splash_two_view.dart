import 'dart:async';

import 'package:flutter/material.dart';
import 'package:one_project_iti/splash/views/widgets/splash_coffee_shop_header.dart';

import 'views/widgets/custom_button.dart';

class SplashTwoView extends StatefulWidget {
  const SplashTwoView({super.key});

  @override
  State<SplashTwoView> createState() => _SplashTwoViewState();
}

class _SplashTwoViewState extends State<SplashTwoView> {
  int backgoundImage = 1;
  @override
  void initState() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      if (backgoundImage == 1) {
        backgoundImage = 3;
        setState(() {});
      } else {
        backgoundImage = 1;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/coffee_background$backgoundImage.jpeg',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SplashCoffeeShopHeader(),
                Spacer(),
                CustomButton(
                  textButton: 'Go To Login',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  textButton: 'Go To Register',
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

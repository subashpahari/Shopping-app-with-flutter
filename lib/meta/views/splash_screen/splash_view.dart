import 'package:ecommerce/app/shared/colors.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Shoppit", 
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: whiteColor,
            ),
            )
          ],
        ),
      ),
    );
  }
}
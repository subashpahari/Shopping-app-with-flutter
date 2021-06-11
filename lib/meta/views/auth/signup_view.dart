import 'package:ecommerce/app/shared/colors.dart';
import 'package:ecommerce/app/shared/dimensions.dart';
import 'package:ecommerce/meta/views/auth/login_view.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignUpView extends StatelessWidget {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: darkColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vSizedBox3,
          Container(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      EvaIcons.arrowIosBack,
                      color: whiteColor,
                    ))
              ],
            ),
          ),
          vSizedBox3,
          Container(
            padding: EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hey there!",
                  style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 40,
                  ),
                ),
                vSizedBox2,
                Text(
                  "Welcome to the party!!",
                  style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
                Text(
                  "Fill in your details",
                  style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 26,
                  ),
                )
              ],
            ),
          ),
          vSizedBox2,
          Column(children: [
            vSizedBox1,
            stylishTextField("Name", nameController),
            vSizedBox1,
            stylishTextField("Email", emailController),
            vSizedBox1,
            stylishTextField("Password", passwordController),
          ]),
          vSizedBox3,
          Center(
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Montserrat',
                          )),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => {
                                  Navigator.pushReplacement(
                                      context,
                                      PageTransition(
                                          child: LoginView(),
                                          type: PageTransitionType.leftToRight))
                                },
                          text: "Login",
                          style: TextStyle(
                            fontSize: 18,
                            color: textColor,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Montserrat',
                          ))
                    ])),
                    vSizedBox2,
                    Container(
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      width: 280,
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: darkColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }

  stylishTextField(String text, TextEditingController textEditingController) {
    return TextField(
      controller: textEditingController,
      style: TextStyle(color: textColor, fontSize: 18),
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
        hintText: text,
        hintStyle: TextStyle(fontSize: 18, color: textColor),
        filled: true,
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            EvaIcons.backspace,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

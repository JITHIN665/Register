import 'package:demo_login/authentication_screen/login_screen.dart';
import 'package:demo_login/authentication_screen/reset_password.dart';
import 'package:demo_login/authentication_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'reuse.dart';

class Log extends StatelessWidget {
  static const String id = 'log_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('assets/logo.png'),
            SizedBox(
              height: 30.0,
            ),
            LogButton(
              //Reusable button with required title,color&onpressed
              title: 'Sign In',
              colour: Color(0xff482D8A),
              onPressed: () {
                Navigator.pushNamed(context, Loginscreen.id);
              },
            ),
            LogButton(
              //Reusable button with required title,color&onpressed
              title: 'Sign Up',
              colour: Color(0xff482D8A),
              onPressed: () {
                Navigator.pushNamed(context, Signupscreen.id);
              },
            ),
            Textbtn(
              //Reusable Textbutton with title&onpress required
              title: 'Forget Password ?',
              onPressed: () {
                Navigator.pushNamed(context, ForgetPassword.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}

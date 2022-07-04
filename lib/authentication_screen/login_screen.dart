import 'package:demo_login/authentication_screen/log.dart';
import 'package:demo_login/authentication_screen/reset_password.dart';
import 'package:flutter/material.dart';
import '../Component/textformfield.dart';
import '../Screens/home_screen.dart';

import 'reuse.dart';

class Loginscreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  late final email = TextEditingController();
  late final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        titleSpacing: 10,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushNamed(context, Log.id);
              }),
        ),
        title: Text('Home'),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextBox(
              text: "Welcome back you'have been missed!",
            ),
            SizedBox(
              height: 40,
            ),
            GetTextFormField(
              hintName: 'Enter Your Email',
              controller: email,
              inputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 10,
            ),
            GetTextFormField(
              hintName: 'Enter Your Password',
              controller: password,
              isObscureText: true,
            ),
            SizedBox(
              height: 20.0,
            ),
            LogButton(
              title: 'Sign In',
              colour: Color(0xff482D8A),
              onPressed: () {
                Navigator.pushNamed(context, Homescreen.id);
              },
            ),
            Textbtn(
              title: 'Forget Password ?',
              onPressed: () {
                //Navigate to Forget password  screen
                Navigator.pushNamed(context, ForgetPassword.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}

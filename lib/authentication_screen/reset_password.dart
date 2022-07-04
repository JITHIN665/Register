import 'package:demo_login/authentication_screen/reuse.dart';
import 'package:flutter/material.dart';
import '../Component/textformfield.dart';
import 'log.dart';

class ForgetPassword extends StatefulWidget {
  static const String id = 'Forget_password';

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  late final email = TextEditingController();
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
              text: "Recover Your Account",
            ),
            SizedBox(
              height: 40,
            ),
            GetTextFormField(
              hintName: 'Enter Your Email',
              controller: email,
              inputType: TextInputType.emailAddress,
            ),
            LogButton(
              title: 'Send Verification',
              colour: Color(0xff482D8A),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

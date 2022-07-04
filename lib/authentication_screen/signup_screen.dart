import 'package:demo_login/Screens/home_screen.dart';
import 'package:demo_login/authentication_screen/log.dart';
import 'package:demo_login/authentication_screen/login_screen.dart';
import 'package:demo_login/db/functions/db_functions.dart';
import 'package:demo_login/model/data_model.dart';
import 'package:flutter/material.dart';
import '../Component/textformfield.dart';
import 'reuse.dart';

class Signupscreen extends StatefulWidget {
  static const String id = 'Signup_screen';

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _Cpassword = TextEditingController();

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
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextBox(
                //reusable Textbox with fixed image
                text: "Enter Your Informations to Join Our Family",
              ),
              SizedBox(
                height: 40,
              ),
              GetTextFormField(
                hintName: 'Enter User Name',
                controller: _username,
                inputType: TextInputType.name,
              ),
              SizedBox(
                height: 10,
              ),
              GetTextFormField(
                hintName: 'Enter Your Email',
                controller: _email,
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 10,
              ),
              GetTextFormField(
                hintName: 'Enter Your Password',
                controller: _password,
                isObscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              GetTextFormField(
                hintName: 'Confirm Your Password',
                controller: _Cpassword,
                isObscureText: true,
              ),
              SizedBox(
                height: 20.0,
              ),
              LogButton(
                title: 'Sign Up',
                colour: Color(0xff482D8A),
                onPressed: () {
                  SignupbuttonClick();
                  Navigator.pushNamed(context, Homescreen.id);
                },
              ),
              Textbtn(
                title: 'Already have an Account ?',
                onPressed: () {
                  Navigator.pushNamed(context, Loginscreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> SignupbuttonClick() async {
    final _Uname = _username.text.trim();
    final _Email = _email.text.trim();
    final _Pass = _password.text.trim();
    final _CPass = _Cpassword.text.trim();
    if (_Uname.isEmpty || _Email.isEmpty || _Pass.isEmpty || _CPass.isEmpty) {
      return;
    }
    print("$_username $_email");
   final _user= UserModel(name: _Uname, email: _Email, password: _Pass, cpassword: _CPass);
    addUser(_user);
  }
}







//  showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: Text('Error'),
//           content: Text('Please fill all the fields'),
//           actions: <Widget>[
//             TextButton(
//               child: Text('OK'),
//               onPressed: (){
//                 Navigator.pop(context);
//               },
//             )
//           ],
//         ),
//       );
//     }
//     else if(_Pass!=_CPass){
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: Text('Error'),
//           content: Text('Password does not match'),
//           actions: <Widget>[
//             TextButton(
//               child: Text('OK'),
//               onPressed: (){
//                 Navigator.pop(context);
//               },
//             )
//           ],
//         ),
//       );
//     }
//     else{
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: Text('Success'),
//           content: Text('You have successfully signed up'),
//           actions: <Widget>[
//             TextButton(
//               child: Text('OK'),
//               onPressed: (){
//                 Navigator.pop(context);
//               },
//             )
//           ],
//         ),
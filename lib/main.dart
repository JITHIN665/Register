import 'package:demo_login/Screens/home_screen.dart';
import 'package:demo_login/authentication_screen/log.dart';
import 'package:demo_login/authentication_screen/login_screen.dart';
import 'package:demo_login/authentication_screen/reset_password.dart';
import 'package:demo_login/authentication_screen/signup_screen.dart';
import 'package:demo_login/db/functions/db_functions.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initilizeDatabase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return MaterialApp(
      initialRoute: Log.id, //initial page to start
      routes: {
        Log.id: (context) => Log(),
        Loginscreen.id: (context) => Loginscreen(),
        Signupscreen.id: (context) => Signupscreen(),
        ForgetPassword.id: (context) => ForgetPassword(),
        Homescreen.id: (context) => Homescreen(),
      },
    );
  }
}

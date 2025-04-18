import 'package:flutter/material.dart';
import 'package:flutter_application_1/createnew_password.dart';
import 'package:flutter_application_1/forgot_password.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/otpscreen.dart';
import 'package:flutter_application_1/thems/colors.theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      color:lightColorScheme.primary,
     initialRoute:"Login_screen",
     routes: {
      "Login_screen":(context)=>Loginscreen(),
      "create_Password":(context)=>CreatePassword(),
      "forgot_password":(context)=> ForgotPasswordscreen(),
      "otp_screen":(context)=>OtpScreen(),
     },
    );
  }
}

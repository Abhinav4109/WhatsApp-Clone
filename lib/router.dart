
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/auth/screens/login_screen.dart';
import 'package:whatsapp_clone/auth/screens/otp_screen.dart';
import 'package:whatsapp_clone/auth/screens/user_information_screen.dart';

Route<dynamic>genrateRoute(RouteSettings settings){
  switch (settings.name){
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case OTPScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OTPScreen(
          verificationID: verificationId,
        ),
      );
     case UserInformationScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const UserInformationScreen(),
      );
     default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Text('Error Screen'),
        ),
      );  
  }
}
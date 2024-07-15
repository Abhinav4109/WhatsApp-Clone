import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:whatsapp_clone/auth/screens/login_screen.dart';
// import 'package:whatsapp_clone/auth/screens/otp_screen.dart';
import 'package:whatsapp_clone/features/landing/screens/landing_screen.dart';
import 'package:whatsapp_clone/firebase_options.dart';
import 'package:whatsapp_clone/router.dart';
// import 'package:whatsapp_clone/screens/mobile_chat_screen.dart';
// import 'package:whatsapp_clone/screens/mobile_layout_screen.dart';
// import 'package:whatsapp_clone/utils/responsive_layout.dart';
// import 'package:whatsapp_clone/screens/mobile_layout_screen.dart';
// import 'package:whatsapp_clone/screens/web_layout_screen.dart';
import 'package:whatsapp_clone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      onGenerateRoute: (settings) => genrateRoute(settings),
      home: const LandingScreen(),
    );
  }
}

import 'package:flutter/material.dart';

class UserInformationScreen extends StatelessWidget {
  static const routeName = '/user-info';
  const UserInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('User Info Screen'),
      ),
    );
  }
}
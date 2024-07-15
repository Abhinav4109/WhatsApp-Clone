import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/auth/controller/auth_controller.dart';
import 'package:whatsapp_clone/common/utils/utils.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({super.key});
  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final phoneController = TextEditingController();
  String _countryPhoneCode = '';
  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  void showPicker(context) {
    showCountryPicker(
      context: context,
      showPhoneCode:
          true, // optional. Shows phone code before the country name.
      onSelect: (Country country) {
        String phoneCode = country.phoneCode;
        setState(() {
          _countryPhoneCode = phoneCode;
        });
      },
    );
  }

  void sendPhoneNumber() {
    String phoneNumber = phoneController.text.trim();
    if (_countryPhoneCode != '' && phoneNumber.isNotEmpty) {
      ref
          .read(authControllerProvider)
          .signInWithPhone(context, '+$_countryPhoneCode$phoneNumber');
    }
    else{
      showSnackBar(context: context, content: 'Fill out all the fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'Enter your phone number',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              const Text('WhatsApp will need to verify your phone number.'),
              const SizedBox(height: 10),
              TextButton(
                  onPressed: () => showPicker(context),
                  child: const Text('Pick Country')),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (_countryPhoneCode != '') Text('+$_countryPhoneCode'),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: size.width * 0.3,
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: phoneController,
                      decoration:
                          const InputDecoration(hintText: 'phone number'),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            width: 100,
            child: CustomButton(text: 'Next', onPressed: sendPhoneNumber),
          )
        ],
      )),
    );
  }
}

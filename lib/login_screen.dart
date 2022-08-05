import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/button_widget.dart';
import 'package:flutter_application_2/common/input_widget.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var container = Container(
          margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset('./lib/assets/images/logo.png'),
            const InputWidget(placeholder: 'Username'),
            const InputWidget(placeholder: 'Password',),
            const ButtonWidget(text:'Log in'),
            Image.asset('./lib/assets/images/fblogo.png'),
            const Text('Log in with Facebook'),
            const Text('OR'),
            const Text('Dont have an account? Sign up')
          ],
        )
        );
    return Scaffold(
      body: SafeArea(
        child: container,
      ),
    );
  }
}

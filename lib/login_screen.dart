import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_2/utils/routes.dart';
import 'package:flutter_application_2/common/input_widget.dart';
import 'package:flutter_application_2/common/button_widget.dart';
import 'package:flutter_application_2/controller/api_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _username = '';
  String _password = '';
  final ApiController _apiController = Get.put(ApiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('./lib/assets/images/logo.png'),
                Column(
                  children: [
                    InputWidget(
                      placeholder: 'Username',
                      onSubmitted: (val) {
                        _username = val;
                      },
                    ),
                    const SizedBox(height: 12),
                    InputWidget(
                        placeholder: 'Password',
                        onSubmitted: (value) {
                          _password = value;
                        }),
                  ],
                ),
                ButtonWidget(text: 'Log in', login: login),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child:
                                Image.asset('./lib/assets/images/fblogo.png')),
                        const Text('Log in with Facebook'),
                      ],
                    ),
                    const Text('OR'),
                    const Text('Dont have an account? Sign up'),
                  ],
                )
              ],
            )),
      ),
    );
  }

  void login() async {
    var url = Uri.parse('http://localhost:3000/login');
    try {
      print("_username: $_username, _password: $_password");
      var response = await http.post(url,
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({'username': _username, 'password': _password}));
      Get.offAllNamed(mainRoute);
      _apiController.fetchUserInfo();
      print('Response status: ${response.statusCode}');
    } catch (e) {
      print("exception: ${e.toString()}");
    }
  }
}

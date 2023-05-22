import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }
  getBody(){
    return Container(
      height: 900,
    width: 900,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/images/onboarding_2.png'),
      fit: BoxFit.cover,
      ),
    ),
      child: Container(
        
      ),
    );

  }
}

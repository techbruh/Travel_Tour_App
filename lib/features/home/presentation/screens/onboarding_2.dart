import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_tour_app/features/home/presentation/screens/sign_up.dart';

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
        image: DecorationImage(image: AssetImage("assets/images/onboarding_2.png"),
        fit: BoxFit.cover
        )
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 250, top: 60),
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.6),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Align(alignment: Alignment.center,
                  child: Text("Tx",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.red[800]),
                  )
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text("You deserve to explore more.", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 35)),
          ),
          SizedBox(
            height: 350,
          ),
          GestureDetector(
            onTap: (){
              Get.off(
                SignUp()
              );
            },
            child: Container(
              height: 85,
              width: 330,
              decoration: BoxDecoration(
                  color: Colors.cyan[900],
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Text("Sign up", style: TextStyle(fontSize: 25, color: Colors.white),)
              ),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Container(
            height: 85,
            width: 330,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50)
            ),
            child: Align(
              alignment: Alignment.center,
                child: Text("Sign in", style: TextStyle(fontSize: 25, color: Colors.cyan[900]),)
            ),
          )
        ],
      ),
    );




    //   Container(
    //   height: 900,
    // width: 900,
    // decoration: BoxDecoration(
    //   image: DecorationImage(image: AssetImage('assets/images/onboarding_2.png'),
    //   fit: BoxFit.cover,
    //   ),
    // ),
    //   child: Container(
    //
    //   ),
    // );

  }
}

import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody()
    );
  }
  getBody() {
    return Container(
      height: 900,
      width: 900,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/onboarding_2.png"),
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
                  child: Text("Tx", style: TextStyle(fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[800]),
                  )
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text("You deserve to explore more.", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 35)),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            height: 522,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40))
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: Row(
                    children: [
                      Text("New\nAccount", style: TextStyle(fontSize: 40),),
                      Padding(
                        padding: const EdgeInsets.only(left: 80, bottom: 20),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(
                             height: 10,
                            ),
                            Text("Upload Picture")
                          ],
                        ),
                      )
                    ],
                  ),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}


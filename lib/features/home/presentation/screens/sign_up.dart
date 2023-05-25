import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


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
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text("You deserve to explore more.", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 35)),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 582,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40))
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 40),
                  child: Row(
                    children: [
                      Text("New\nAccount", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.cyan[900] ),),
                      Padding(
                        padding: const EdgeInsets.only(left: 80, bottom: 20),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.cyan[900],
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                  radius: 38,
                               child: Icon(Icons.camera_alt_outlined, size: 40, color: Colors.black,),
                              ),
                            ),
                            SizedBox(
                             height: 4,
                            ),
                            Text("Upload Picture",)
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text("Email", style: TextStyle(color: Colors.grey, fontSize: 18),),
                    )
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "skiplabtech@gmail.com",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.cyan[900]!,
                          width: 2!
                        )
                      ),
                      prefixIcon: Icon(Icons.email,
                      color: Colors.black,

                      )
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text("Username", style: TextStyle(color: Colors.grey, fontSize: 18),),
                    )
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Skiplab",
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.cyan[900]!,
                                width: 2!
                            )
                        ),
                        prefixIcon: SvgPicture.asset("assets/icons/user.svg",
                            height: 25,
                          width: 25,
                          fit: BoxFit.scaleDown,
                        )
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text("Password", style: TextStyle(color: Colors.grey, fontSize: 18),),
                    )
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "******",
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.cyan[900]!,
                              width: 2!
                          )
                      ),
                        prefixIcon: Icon(Icons.key,
                        color: Colors.black,
                          size: 30,
                        ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 95,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.cyan[900],
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("Sign up", style: TextStyle(fontSize: 25, color: Colors.white),)
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


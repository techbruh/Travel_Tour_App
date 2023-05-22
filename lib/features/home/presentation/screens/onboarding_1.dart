import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_tour_app/features/home/presentation/screens/onboarding_2.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: getBody(),
    );
  }
  getBody(){
    return Column(
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(image: AssetImage("assets/images/onboarding_img.png",),
            fit: BoxFit.cover,
            )
          ),
        ),
        Container(
          height: 395,
          width: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35,),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text.rich( TextSpan(
                      children: [
                        TextSpan(text: "Explore \n", style: TextStyle(fontSize: 38, color: Colors.cyan[900], fontWeight: FontWeight.bold)),
                        TextSpan(text: "New Places",style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold,color: Colors.cyan[900],)),
                      ],
                  ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35, bottom: 80),
                  child: Text('The application will help you find attraction,\n tours or adventures in a new city',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan[900]
                    ),

                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: GestureDetector(
                    onTap: (){
                      Get.off(
                          LoginPage()
                      );
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.red[600],
                      radius: 35,
                      // child: Icon(Icons.,
                      //   color: Colors.white,
                      //   size: 35,
                      // ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );

  }
}

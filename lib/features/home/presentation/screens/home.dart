import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_tour_app/features/home/presentation/screens/openingpage.dart';


class OpeningPage extends StatelessWidget {
  const OpeningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: getBody(),
    );
  }
  Widget getBody(){
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Padding(
                padding: const EdgeInsets.only(bottom: 50, left: 20,),
                child: Text('Tx.',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize:30,
                      fontWeight: FontWeight.w800
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 70, right: 30, top: 15),
                child: GestureDetector(
                  onTap: (){
                    Get.off(
                      HomePage()
                    );
                  },
                  child: Text('Skip',
                    style: TextStyle(
                      color: Colors.cyan[900],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text.rich( TextSpan(
                      children: [
                        TextSpan(text: "Welcome \nto ", style: TextStyle(fontSize: 38, color: Colors.cyan[900])),
                        TextSpan(text: "TravelX",style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold,color: Colors.cyan[900]))
                      ]
                  )),
                ),
              ],
            ),
          ),
          Image.asset('assets/images/opening_1.png',)
        ],

      ),
    );
  }
}



// Align(
// alignment: Alignment.topLeft,
// child: Text( "Welcome \n to TravelX",
// style: TextStyle(
// fontSize: 50
// ),
// ),
// ),

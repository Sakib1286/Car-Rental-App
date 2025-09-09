import 'package:flutter/material.dart';
import 'package:rental/Presentation/Pages/car_list_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body:Column(
        children: [
            Expanded(
              flex: 2,
              child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/onboarding.png'),
                  fit: BoxFit.cover)),),
            ),
          Expanded(
            child: Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Premium Cars\nEnjoy the Luxury",
                    style: TextStyle(color: Colors.black54,fontSize: 32,fontWeight: FontWeight.bold,fontStyle:FontStyle.italic),),
                  SizedBox(height: 10,),
                  Text("Premium and prestige car daily rental\nExperience the thrill at a lower price",
                    style: TextStyle(color: Colors.black54,fontSize: 16),),
                  SizedBox(height: 20,),

                  SizedBox(
                    width: 320,
                    height: 54,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => CarListScreen())
                          , (route) => false);},
                        style: ElevatedButton.styleFrom(backgroundColor:Colors.white,foregroundColor: Colors.black),
                        child: Text("Let\'s Go")),
                  )
                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}
/////it a testing
import 'package:flutter/material.dart';
import 'package:rental/Presentation/Pages/MapDetails.dart';
import 'package:rental/Presentation/Widgets/car_cart.dart';
import 'package:rental/Presentation/Widgets/more_card.dart';
import 'package:rental/data/Models/car.dart';

class DetailsCar extends StatelessWidget {
  final Car car;
  const DetailsCar({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Information"),
        centerTitle: true,
        backgroundColor: Colors.white70,

      ),
      body:  Column(
          children: [
            CarCart(car: Car(model: car.model, distance: car.distance, fuelCapacity: car.fuelCapacity, pricePerHour: car.pricePerHour)),
            SizedBox(height: 10,),
        

            Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Row(
                 children: [
                     
                   Expanded(
                   child: Container(
                     height: 160,
                     padding: EdgeInsets.all(20),
                     // height: 10,
                     decoration: BoxDecoration(
                         color: Colors.white70,
                         borderRadius: BorderRadius.circular(20),
                         boxShadow: [
                           BoxShadow(
                               color: Colors.black54,
                               blurRadius: 10,
                               spreadRadius: 5
                           )
                         ]
                     ),
                     child: Column(
                       children: [
                         CircleAvatar(radius: 35,backgroundImage: AssetImage('assets/user.png'),),
                         SizedBox(height: 10,),
                         Text('Najmus Sakib',style:TextStyle(fontWeight: FontWeight.bold),),
                         Text('\$4.253',style:TextStyle(color: Colors.grey),),


                       ],
                     ),
                   ),
                 ),
                   SizedBox(width: 10,),
                   Expanded(
                     child: GestureDetector(
    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MapdetailsPage(car: car)));},
                       child: Container(
                         height: 160,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(image: AssetImage('assets/maps.png'),
                                 fit: BoxFit.cover
                             ),
                             boxShadow: [
                               BoxShadow(
                                   color: Colors.black54,
                                   blurRadius: 10,
                                   spreadRadius: 5
                               )
                             ]

                         ),
                       ),
                     ),
                   ),],
               ),
             ),

            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  MoreCard(car:Car(model: car.model+'-1', distance: car.distance+100, fuelCapacity: car.fuelCapacity+100, pricePerHour: car.pricePerHour+10)),
                  SizedBox(height: 5,),
                  MoreCard(car: Car(model: car.model+'-2', distance: car.distance+200, fuelCapacity: car.fuelCapacity+200, pricePerHour: car.pricePerHour+20)),
                  SizedBox(height: 5,),
                  MoreCard(car: Car(model: car.model+'-3', distance: car.distance+300, fuelCapacity: car.fuelCapacity+300, pricePerHour: car.pricePerHour+30))
                ],
              ),
            )
          ],
        ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:rental/Presentation/Pages/MapDetails.dart';
import 'package:rental/Presentation/Widgets/car_cart.dart';
import 'package:rental/Presentation/Widgets/more_card.dart';
import 'package:rental/data/Models/car.dart';

class DetailsCar extends StatefulWidget {
  final Car car;
  const DetailsCar({super.key, required this.car});

  @override
  State<DetailsCar> createState() => _DetailsCarState();
}

class _DetailsCarState extends State<DetailsCar> with SingleTickerProviderStateMixin {


  //Animated Maps Image
  AnimationController ? _controller;
  Animation<double>? _animation;

  @override
  void initState(){

    _controller =AnimationController(
        duration: const Duration(seconds: 3),
        vsync: this);

    _animation = Tween<double>(begin: 1.0 ,end: 1.5).animate(_controller!)
    ..addListener((){setState(() {});});
    _controller!.forward();
    super.initState();
  }

  @override
  void dispose() {
   _controller!.forward();
    super.dispose();
  }
// End
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
            CarCart(car: Car(model: widget.car.model, distance: widget.car.distance, fuelCapacity: widget.car.fuelCapacity, pricePerHour: widget.car.pricePerHour)),
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
    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MapdetailsPage(car: widget.car)));},
                       child: Container(
                         height: 160,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             boxShadow: [
                               BoxShadow(
                                   color: Colors.black54,
                                   blurRadius: 10,
                                   spreadRadius: 5
                               )
                             ]

                         ),

                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(20),
                           child: Transform.scale(
                             scale: _animation!.value,
                             alignment: Alignment.center,
                             child: Image.asset('assets/maps.png',fit: BoxFit.cover,),
                           ),
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
                  MoreCard(car:Car(model: widget.car.model+'-1', distance: widget.car.distance+100, fuelCapacity: widget.car.fuelCapacity+100, pricePerHour: widget.car.pricePerHour+10)),
                  SizedBox(height: 5,),
                  MoreCard(car: Car(model: widget.car.model+'-2', distance: widget.car.distance+200, fuelCapacity: widget.car.fuelCapacity+200, pricePerHour: widget.car.pricePerHour+20)),
                  SizedBox(height: 5,),
                  MoreCard(car: Car(model: widget.car.model+'-3', distance: widget.car.distance+300, fuelCapacity: widget.car.fuelCapacity+300, pricePerHour: widget.car.pricePerHour+30))
                ],
              ),
            )
          ],
        ),

    );
  }
}

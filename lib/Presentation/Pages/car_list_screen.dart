import 'package:flutter/material.dart';
import 'package:rental/Presentation/Widgets/car_cart.dart';

import '../../data/Models/car.dart';

class CarListScreen extends StatelessWidget {
   CarListScreen({super.key});
final List<Car> cars=[
Car(model: "Nissan GTR", distance: 1200, fuelCapacity: 55, pricePerHour: 100),
  Car(model: "Nissan GTR", distance: 1200, fuelCapacity: 55, pricePerHour: 100),
  Car(model: "Nissan GTR", distance: 1200, fuelCapacity: 55, pricePerHour: 100),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose your Car"),
        centerTitle: true,
        backgroundColor: Colors.white70,

      ),
      body: ListView.builder(
        itemCount: cars.length,
          itemBuilder: (context,index){
          return CarCart(car: cars[index]);
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental/Presentation/Widgets/car_cart.dart';
import 'package:rental/Presentation/bloc/car_bloc.dart';
import 'package:rental/Presentation/bloc/car_state.dart';

import '../../data/Models/car.dart';

class CarListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose your Car"),
        centerTitle: true,
        backgroundColor: Colors.white70,

      ),
      body: BlocBuilder<CarBloc,CarState>(

        builder: (context, state){
          if(state is CarsLoading){
            return Center(child: CircularProgressIndicator(),);
      } else if(state is CarsLoaded) {
      return ListView.builder(
      itemCount: state.cars.length,
      itemBuilder: (context, index){
      return CarCart(car: state.cars[index]);
      },
      );
      }
      else if(state is CarsError) {
      return Center(child: Text('error : ${state.message}'),);
      }
      return Container();
      },
      )
    );
  }
}

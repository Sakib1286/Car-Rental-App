import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental/Presentation/bloc/car_event.dart';
import 'package:rental/Presentation/bloc/car_state.dart';
import 'package:rental/domains/usecases/get_cars.dart';

class CarBloc extends Bloc<CarEvent,CarState>{

  final GetCars getCars;

CarBloc({required this.getCars}): super (CarsLoading()){



  on<LoadCars>((event,emit) async {
    emit(CarsLoading());
    try {
      final cars = await getCars.call();
      emit(CarsLoaded(cars));
    }catch(e){
      emit(CarsError(e.toString()));
    }
  }

  );

}}
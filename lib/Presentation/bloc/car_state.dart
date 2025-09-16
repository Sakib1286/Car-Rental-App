import '../../data/Models/car.dart';

abstract class CarState{}

class CarsLoading extends CarState{}

class CarsLoaded extends CarState{
  List<Car> cars;
CarsLoaded(this.cars);

}


class  CarsError extends CarState{

  final String message;
  CarsError(this.message);
}


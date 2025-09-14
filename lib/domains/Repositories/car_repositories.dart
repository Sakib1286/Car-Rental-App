import '../../data/Models/car.dart';

abstract class CarRepository{

  Future<List<Car>> fetchCars();
}
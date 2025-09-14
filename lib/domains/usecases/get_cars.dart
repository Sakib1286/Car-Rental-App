import 'package:rental/domains/Repositories/car_repositories.dart';

import '../../data/Models/car.dart';

class GetCars{
final CarRepository repository;


GetCars(this.repository);
Future<List<Car>> call() async{

  return await repository.fetchCars();
}

}
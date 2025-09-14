import 'package:rental/data/datasource/firebase_car_data_source.dart';
import 'package:rental/domains/Repositories/car_repositories.dart';

import '../Models/car.dart';

class CarRepositoryImpl implements CarRepository{

final firebaseCarDataSource dataSource;

CarRepositoryImpl({required this.dataSource});

  @override
  Future<List<Car>> fetchCars() {
    // TODO: implement fetchCars
    return dataSource.GetCars();
  }
}

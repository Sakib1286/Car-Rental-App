import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rental/data/Models/car.dart';
import 'package:rental/domains/usecases/get_cars.dart';

class FirebaseCarDataSource{

  final FirebaseFirestore firestore;

  FirebaseCarDataSource({required this.firestore});

  Future<List<Car>> GetCars()async{
    var snapshot= await firestore.collection('Cars').get();
  return snapshot.docs.map((doc) => Car.fromMap(doc.data())).toList();
  }

}
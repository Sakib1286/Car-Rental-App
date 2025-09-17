import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental/Presentation/Pages/MapDetails.dart';
import 'package:rental/Presentation/Pages/car_list_screen.dart';
import 'package:rental/Presentation/Pages/details_car.dart';
import 'package:rental/Presentation/Pages/onboarding_page.dart';
import 'package:rental/Presentation/bloc/car_bloc.dart';
import 'package:rental/Presentation/bloc/car_event.dart';

import 'Presentation/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  initInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CarBloc>()..add(LoadCars()),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(

            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          debugShowCheckedModeBanner: false,
          home: OnboardingPage()
      ),
    );
  }
}
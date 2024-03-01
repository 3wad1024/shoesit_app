import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoezy_app/features/on_boarding/splash_view.dart';

Future<void> main() async {
  //  initilaize firebase on my app
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
  options: FirebaseOptions(
    apiKey:  "AIzaSyDXGgzPe-i7s8WvyRH512awVPkq6zJ8ZO8",
     appId: "shoesit-4ea44",
      messagingSenderId: "49711348126",
       projectId: "shoesit-4ea44",
       
       )
 );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/bloc_observer.dart';
import 'package:my_app/screen/OnBoarder.dart';
import 'package:my_app/screen/home.dart';
import 'package:my_app/screen/sign_in.dart';
import 'package:my_app/screen/sign_up.dart';

import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const OnBoarder(),
        Sign_In.routeName: (context) => Sign_In(),
        Sign_Up.routeName: (context) => Sign_Up(),
        Home.routeName: (context) => const Home(),
      },
    );
  }
}



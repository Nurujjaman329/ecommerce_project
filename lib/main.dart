import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'views/buyers/auth/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
              apiKey: "AIzaSyAHMzcxoczO33PEUny9SnUHHaVplD1osEU",
              appId: "1:479653429197:android:b98624f494c2a59ba18e84",
              messagingSenderId: "479653429197",
              projectId: "ecommerce-17-3-24",
              storageBucket: "gs://ecommerce-17-3-24.appspot.com"))
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Ecommerce Project',
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}

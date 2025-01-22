import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:testpos/core/constantes.dart';
import 'package:testpos/screens/operation_screen.dart';
import 'package:testpos/screens/resultSearch_screen.dart';
import 'package:testpos/screens/search_screen.dart';

void main() async {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // await Future.delayed(
  //   const Duration(seconds: 2)
  // );
  // FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constantes.APP_NAME,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 29, 111, 35)),
        useMaterial3: true,
      ),
      home: const SearchScreen()
    );
  }
}


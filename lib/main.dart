import 'package:bloc/bloc.dart';
import 'package:countries/service_locator.dart';
import 'package:countries/view/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencies();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      title: 'Countries',
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}
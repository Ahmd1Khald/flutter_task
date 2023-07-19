import 'package:flutter/material.dart';

import 'Core/resourse/routes_manager.dart';
import 'Features/auth/presentation/virefy_phone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //color: ColorManager.primaryColor,
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.getRoute,
      //initialRoute: Routes.splashRoute,
      home: const VerifyPhone(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_task/Core/helpers/cachehelper.dart';

import 'Core/resourse/routes_manager.dart';

void main() async {
  await CacheHelper.init();
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
      initialRoute: Routes.splashRoute,
    );
  }
}

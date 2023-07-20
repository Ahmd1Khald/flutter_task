import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/Core/helpers/cachehelper.dart';

import 'Core/helpers/ServiceLocator.dart';
import 'Core/helpers/bloc_obsever.dart';
import 'Core/helpers/dio_helper.dart';
import 'Core/resourse/routes_manager.dart';
import 'Features/auth/data/repository/videos_repository.dart';
import 'Features/auth/domain/usecase/check_otp_usecase.dart';
import 'Features/auth/domain/usecase/get_verify_usecase.dart';
import 'Features/auth/presentation/cotroller/verify_cubit.dart';
import 'Features/help/data/repository/help_repository.dart';
import 'Features/help/domain/usecase/get_verify_usecase.dart';
import 'Features/help/presentation/cotroller/help_cubit.dart';
import 'Features/layout/presentation/views/product_details_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  setUpServiceLocator();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => VerifyCubit(
            VerifyUseCase(getIt.get<VerifyRepository>()),
            OtpUseCase(getIt.get<VerifyRepository>()),
          ),
        ),
        BlocProvider(
          create: (BuildContext context) => HelpCubit(
            HelpUseCase(getIt.get<GetHelpRepository>()),
          )..fetchHelpsList(),
        ),
      ],
      child: MaterialApp(
        //color: ColorManager.primaryColor,
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routes.getRoute,
        //initialRoute: Routes.splashRoute,
        home: const ProductDetailsScreen(),
      ),
    );
  }
}

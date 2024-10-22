import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce/bloc_obs.dart';
import 'package:ecommerce/core/configs/theme/app_theme.dart';
import 'package:ecommerce/generated/codegen_loader.g.dart';
import 'package:ecommerce/presentation/splash/bloc/splash_cubit.dart';
import 'package:ecommerce/presentation/splash/pages/splash.dart';
import 'package:ecommerce/service_locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, 
    name: 'Depi version',
  );
  await initializeDependencies();
  
  MyBlocObserver blocObserver = MyBlocObserver();
  Bloc.observer = blocObserver;
  
  runApp(
    EasyLocalization(
      supportedLocales:const [Locale('en'), Locale('ar')],
      path: 'assets/translations', 
      fallbackLocale: Locale('en'), 
      assetLoader: CodegenLoader(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale, 
        theme: AppTheme.appTheme,
        debugShowCheckedModeBanner: false,
        home: const SplashPage(),
      ),
    );
  }
}

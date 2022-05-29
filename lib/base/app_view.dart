import 'package:flutter/material.dart';
import 'package:stacked_mvvm/base/app_setup.router.dart';
import 'package:stacked_mvvm/views/splash/splash_view.dart';
import 'package:stacked_services/stacked_services.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stacked & MVVM',

      // If you've added the stacked_services package then set the navigatorKey, otherwise set
      // your own navigator key
      navigatorKey: StackedService.navigatorKey,
      // Construct the StackedRouter and set the onGenerateRoute function
      onGenerateRoute: StackedRouter().onGenerateRoute,

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
    );
  } // build
} // AppView

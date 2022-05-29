import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_mvvm/services/auth_service.dart';
import 'package:stacked_mvvm/views/login/login_view.dart';
import 'package:stacked_mvvm/views/splash/splash_view.dart';
import 'package:stacked_services/stacked_services.dart';

import '../views/home/home_view.dart';

// generate build runner
@StackedApp(

  routes: [
    MaterialRoute(page: SplashView, initial: true,),
    MaterialRoute(page: LoginView,),
    MaterialRoute(page: HomeView,),
  ], // routes

  dependencies: [
    LazySingleton(classType: AuthService),
    // we have to register NavigationService
    // get_it
    Singleton(classType: NavigationService),
  ] // dependencies
) // StackedApp
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
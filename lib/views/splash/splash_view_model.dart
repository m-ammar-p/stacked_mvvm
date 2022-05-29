import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mvvm/base/app_setup.locator.dart';
import 'package:stacked_mvvm/base/app_setup.router.dart';
import 'package:stacked_mvvm/services/auth_service.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends BaseViewModel {

  final BuildContext context;


  SplashViewModel(this.context);

  void init() async {

    // this works like SetState() -> just call it
    // notifyListeners();

    await Future.delayed(Duration(seconds: 2));

    // if current user is login then route to home page
    if(locator<AuthService>().email != null) {
      locator<NavigationService>().pushNamedAndRemoveUntil(Routes.homeView);
      return;
    }
    locator<NavigationService>().pushNamedAndRemoveUntil(Routes.loginView);
  } // init

} // SplashViewModel
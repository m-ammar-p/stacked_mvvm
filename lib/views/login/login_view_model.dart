import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mvvm/base/app_setup.locator.dart';
import 'package:stacked_mvvm/base/app_setup.router.dart';
import 'package:stacked_mvvm/services/auth_service.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {

  // singleton will be get of AuthService
  final _authService = locator<AuthService>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordlController = TextEditingController();

  void onLoginTap(BuildContext context) async {
    if(!(Form.of(context)?.validate() ?? false)) {
      return;
    }

    // this is isLoading = true
    // it will terminate automatically when task will be done
    var res = await runBusyFuture(_authService.loginOrCreateUser(emailController.text, passwordlController.text));

    if(res){
      locator<NavigationService>().pushNamedAndRemoveUntil(Routes.homeView);
    }
  } // onLoginTap

  String? validateEmail(String? value) {

    if(value == null || value.isEmpty) {
      return "Please enter an email";
    }

    if(!value.contains("@")) {
      return "Please enter a valid email";
    }
    return null;
  } // validateEmail


  String? validatePassword(String? value) {

    if(value == null || value.isEmpty) {
      return "Please enter password";
    }

    if(value.length < 6) {
      return "Password must contains at least 6 characters";
    }
    return null;
  } // validatePassword
} // LoginViewModel
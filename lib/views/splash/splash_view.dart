import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mvvm/views/splash/splash_view_model.dart';

class SplashView extends ViewModelBuilderWidget<SplashViewModel> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, SplashViewModel viewModel, Widget? child) {
    return Scaffold(
      body: Center(
        child: Text("Splash View",
        style: Theme.of(context).textTheme.headline4,),
      ),
    );
  } // builder

  // Construct ViewModel
  @override
  SplashViewModel viewModelBuilder(BuildContext context) => SplashViewModel(context);

  // this is initState
  @override
  void onViewModelReady(SplashViewModel viewModel) {
    viewModel.init();
  } // onViewModelReady

  // reactive = false (means Stateless)
  // reactive = true (means Stateless) Stateful
  @override
  bool get reactive => true;

} // SplashView

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mvvm/views/home/home_view_model.dart';


class HomeView extends ViewModelBuilderWidget<HomeViewModel> {

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
    );
  } // builder

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

} // HomeView

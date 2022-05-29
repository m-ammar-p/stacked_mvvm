import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stacked_mvvm/base/app_setup.locator.dart';
import 'package:stacked_mvvm/base/app_view.dart';
import 'firebase_options.dart';

void main() async {

  // its not written in documentation
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // singleton Locator which was generated from stacked_generator
  // it locates services and create their instances
  await setupLocator();
  runApp(const AppView());
} // main



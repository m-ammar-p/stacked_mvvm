import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mvvm/views/login/login_view_model.dart';

class LoginView extends ViewModelBuilderWidget<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);


  @override
  Widget builder(BuildContext context, LoginViewModel viewModel, Widget? child) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Login"),
     ),
     body: Form(
       child: Builder(
         builder: (context) {
           return Padding(
             padding: const EdgeInsets.all(15),
             child: Column(
               children: [

                 TextFormField(
                   controller: viewModel.emailController,
                   validator: viewModel.validateEmail,
                   decoration: InputDecoration(
                     hintText: "Email Address"
                   ),
                 ),

                 TextFormField(
                   controller: viewModel.passwordlController,
                   validator: viewModel.validatePassword,
                   obscureText: true,
                   decoration: InputDecoration(
                       hintText: "Password"
                   ),
                 ),

                 ElevatedButton(onPressed: () => viewModel.onLoginTap(context), child: Text("Login")),
               ],
             ),
           );
         }
       ),
     ),
   );

  } // builder

  // Construct ViewModel
  @override
  LoginViewModel viewModelBuilder(BuildContext context) => LoginViewModel();

} // LoginView


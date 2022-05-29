import 'package:firebase_auth/firebase_auth.dart';

class AuthService  {

  String? get email => FirebaseAuth.instance.currentUser?.email;

  Future<bool> loginOrCreateUser(String email, String password) async {

    try{

      await _signIn(email, password);
      return true;

    } catch(e){
        try{
          await _signUp(email, password);
          return true;

        } catch(e){
          return false;
        }
    }
  } // loginOrCreateUser

  _signIn(String email, String password) async {

    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
  } // _signIn

  _signUp(String email, String password) async {

    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
  } // _signUp

} // AuthService
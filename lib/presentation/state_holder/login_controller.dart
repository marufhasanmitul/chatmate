import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginController extends GetxController{
  FirebaseAuth _auth = FirebaseAuth.instance;
  bool _logInProgress=false;
  bool get loginProgress => _logInProgress;

  Future<User?> loginInWithEmailAndPassWord(String email,String password)async{
    try{
      _logInProgress=true;
      update();
      UserCredential credential=await _auth.signInWithEmailAndPassword(email: email, password: password);
      _logInProgress=false;
      update();
      return credential.user;

    }catch(e){
      print("Some Error Occured");
    }
    return null;
  }



}
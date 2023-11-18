import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpController extends GetxController{
  FirebaseAuth _auth = FirebaseAuth.instance;
  bool _signUpProgress=false;
  bool get signUpProgress => _signUpProgress;

  Future<User?> signUpWithEmailAndPassWord(String email,String password)async{
    try{
      _signUpProgress=true;
      update();
      UserCredential credential=await _auth.createUserWithEmailAndPassword(email: email, password: password);
      _signUpProgress=false;
      update();
      return credential.user;

    }catch(e){
      print("Some Error Occured");
    }
    return null;
  }



}
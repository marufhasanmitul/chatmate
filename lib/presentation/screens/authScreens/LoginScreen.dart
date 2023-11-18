import 'package:chatmate/Utils/colorAll.dart';
import 'package:chatmate/presentation/state_holder/login_controller.dart';
import 'package:chatmate/screens/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../splash_screen.dart';
import 'SignUpScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final globalkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool pressIcon = true;
  String? _validateEmail(value) {
    if (value!.isEmpty) {
      return 'Please enter an Email';
    }
    RegExp emailReg = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailReg.hasMatch(value)) {
      return 'Please enter an valid email';
    }
    return null;
  }

  void _submitform() {
    if (globalkey.currentState!.validate()) {

      _login();
    }
  }


  void _login()async{
    String email=emailController.text.trim();
    String password=passwordController.text.trim();
    User? user = await Get.find<LoginController>().loginInWithEmailAndPassWord(email, password);
    if(user != null){
      print("User is Successfully Created ");
      Get.to(()=>const HomePage());
    }else{
      print("Some Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.off(const SplashScreen());
            },
            icon: const Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Login Account',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  key: globalkey,
                  child: Column(
                    children: [
                      TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            suffixIcon: const Icon(
                              Icons.mail,
                            ),
                            suffixIconColor: ColorAll.primaryColor,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    const BorderSide(color: ColorAll.primaryColor)),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            label: const Text(
                              'Email',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                            labelStyle: const TextStyle(
                                fontSize: 45, fontWeight: FontWeight.bold),
                          ),
                          validator: _validateEmail),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: pressIcon,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          suffixIcon: InkWell(
                            onTap: (){
                              setState(() {
                                pressIcon = !pressIcon;
                              });
                            },
                              child:  Icon(pressIcon? Icons.visibility :Icons.visibility_off)
                          ),
                          suffixIconColor: ColorAll.primaryColor,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: ColorAll.primaryColor)),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          label: const Text(
                            'Password',
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                          labelStyle: const TextStyle(
                              fontSize: 45, fontWeight: FontWeight.bold),
                        ),
                        validator: (value) {
                          if (value == null || value!.isEmpty) {
                            return 'Please Enter Password';
                          } else if (value.length < 8) {
                            return 'Please enter minimum 8 character';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Save Password')
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Forget Password?",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: GetBuilder<LoginController>(
                      builder: (controller) {
                        if(controller.loginProgress){
                          return const Center(child: CircularProgressIndicator(),);
                        }
                        return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: ColorAll.primaryColor),
                            onPressed: _submitform,
                            child: const Text(
                              "Login Account",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ));
                      }
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Get.to(const SignUpScreen());
                      },
                      child: const Text("Sign Up",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}

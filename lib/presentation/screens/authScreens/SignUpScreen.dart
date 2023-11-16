import 'package:chatmate/Utils/colorAll.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../splash_screen.dart';
import 'LoginScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final globalkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController massageController = TextEditingController();

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
    if (globalkey.currentState!.validate()) {}
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
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Create Account',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: globalkey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.person),
                        suffixIconColor: ColorAll.primaryColor,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: ColorAll.primaryColor)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        label: const Text(
                          'Full Name',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        labelStyle: const TextStyle(
                            fontSize: 60, fontWeight: FontWeight.bold),
                      ),
                      validator: (value) {
                        if (value == null || value!.isEmpty) {
                          return 'Please Enter your Name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
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
                              borderSide:
                                  const BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: ColorAll.primaryColor)),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          label: const Text(
                            'Email Address',
                            style:
                                TextStyle(color: Colors.black, fontSize: 13),
                          ),
                          labelStyle: const TextStyle(
                              fontSize: 60, fontWeight: FontWeight.bold),
                        ),
                        validator: _validateEmail),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.phone),
                        suffixIconColor: ColorAll.primaryColor,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: ColorAll.primaryColor)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        label: const Text(
                          'Phone Number',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        labelStyle: const TextStyle(
                            fontSize: 60, fontWeight: FontWeight.bold),
                      ),
                      validator: (value) {
                        if (value == null || value!.isEmpty) {
                          return 'Please Enter your Name';
                        } else if (value.length < 11) {
                          return 'Please enter minimum 11 character';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.password),
                        suffixIconColor: ColorAll.primaryColor,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: ColorAll.primaryColor)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        label: const Text(
                          'Password',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        labelStyle: const TextStyle(
                            fontSize: 60, fontWeight: FontWeight.bold),
                      ),
                      validator: (value) {
                        if (value == null || value!.isEmpty) {
                          return 'Please Enter your Name';
                        } else if (value.length < 8) {
                          return 'Please enter minimum 8 character';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.check_circle_outline),
                        suffixIconColor: ColorAll.primaryColor,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                            const BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: ColorAll.primaryColor)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        label: const Text(
                          'Conform Password',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        labelStyle: const TextStyle(
                            fontSize: 60, fontWeight: FontWeight.bold),
                      ),
                      validator: (value) {
                        if (value == null || value!.isEmpty) {
                          return 'Please Enter your Name';
                        } else if (value.length < 8) {
                          return 'Please enter minimum 8 character';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('agree with '),
                        Text(
                          'Term and Condition',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorAll.primaryColor),
                      onPressed: _submitform,
                      child: const Text(
                        "Create Account",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ))),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already you have account?"),
                  TextButton(
                    onPressed: () {
                      Get.to(const LoginScreen());
                    },
                    child: const Text("Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

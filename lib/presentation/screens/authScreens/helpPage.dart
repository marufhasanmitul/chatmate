import 'package:chatmate/Utils/colorAll.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../splash_screen.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
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
        child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Contact Us',
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
                            'Your Name',
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
                        height: 25,
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
                              'Email',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                            labelStyle: const TextStyle(
                                fontSize: 60, fontWeight: FontWeight.bold),
                          ),
                          validator: _validateEmail),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        maxLines: 5,
                        controller: massageController,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
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
                            'Your Massage',
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
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorAll.primaryColor),
                        onPressed: _submitform,
                        child: const Text(
                          "Sand Massage",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ))),
              ],
            )),
      ),
    );
  }
}

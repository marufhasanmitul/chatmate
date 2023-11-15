import 'package:chatmate/Utils/ScreenBackground.dart';
import 'package:chatmate/Utils/assets.images.dart';
import 'package:chatmate/Utils/colorAll.dart';
import 'package:chatmate/screens/authScreens/LoginScreen.dart';
import 'package:chatmate/screens/authScreens/helpPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              child: const Image(
                  image: AssetImage(
                AppImageAssets.Fingure,
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Sign up with Chatmate',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Get Chatting with friends and family today by'
              ' signing up for our chatmate',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white30, fontSize: 17),
            ),
            const SizedBox(
              height: 90,
            ),
            SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorAll.primaryColor),
                    onPressed: () {
                      Get.to(const LoginScreen());
                    },
                    child: const Text(
                      "Login with Email",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ))),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'New User?',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            TextButton(
              onPressed: () {
                Get.to(const HelpScreen());
              },
              child: const Text(
                'Help?',
                style: TextStyle(color: ColorAll.primaryColor, fontSize: 17),
              ),
            )
          ],
        ),
      )),
    );
  }
}

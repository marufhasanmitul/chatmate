import 'package:chatmate/Utils/assets.images.dart';
import 'package:flutter/material.dart';




class ScreenBackground extends StatelessWidget {
  final Widget child;
  const ScreenBackground({Key? key,required this.child}): super(key: key);



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            AppImageAssets.Background,
            fit: BoxFit.fitHeight,
          ),
        ),
        child
      ],
    );
  }
}
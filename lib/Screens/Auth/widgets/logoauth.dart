import 'package:e_commerce_final_projects/Core/Constant/images_assets.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 100.0,
        width: 100.0,
        child: Image.asset(
          AppImageAssets.logo,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

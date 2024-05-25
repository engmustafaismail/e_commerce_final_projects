import 'package:e_commerce_final_projects/Core/Constant/colors.dart';
import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const GlobalButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .1),
      decoration: BoxDecoration(
        // color: AppColors.primary,
        gradient: AppGradientColors.gradientOne,
        borderRadius: BorderRadius.circular(30.5),
      ),
      child: Center(
        child: InkWell(
          onTap: onPressed,
          child: SizedBox(
            height: 45.0,
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 22.0,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

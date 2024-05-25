import 'package:e_commerce_final_projects/Core/Constant/gap.dart';
import 'package:e_commerce_final_projects/Core/Constant/images_assets.dart';
import 'package:e_commerce_final_projects/Core/Shared/global_button.dart';
import 'package:flutter/material.dart';

class CustomSuccessPage extends StatelessWidget {
  final String title;
  final String descrip;
  final void Function() onPressed;
  final String buttonlabel;

  const CustomSuccessPage({
    super.key,
    required this.title,
    required this.descrip,
    required this.onPressed,
    required this.buttonlabel,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Gap.responsivGap(context, .04),
          const SuccessImage(),
          Text(
            descrip,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Gap.responsivGap(context, .04),
          GlobalButton(onPressed: onPressed, text: buttonlabel)
        ],
      ),
    );
  }
}

class SuccessImage extends StatelessWidget {
  const SuccessImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image.asset(
        AppImageAssets.success,
        fit: BoxFit.fill,
      ),
    );
  }
}

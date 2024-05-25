import 'package:flutter/material.dart';

class OnBordingImageStyle extends StatelessWidget {
  final Image image;
  const OnBordingImageStyle({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height*.4,
      padding: const EdgeInsets.all(5.5),
      child: Center(
        child: image,
      ),
    );
  }
}

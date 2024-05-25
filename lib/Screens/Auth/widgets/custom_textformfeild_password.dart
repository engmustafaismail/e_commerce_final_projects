import 'package:flutter/material.dart';

import '../../../Core/Constant/colors.dart';

class CustomTextFormAuthPassword extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const CustomTextFormAuthPassword({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        validator: validator,
        controller: controller,
        obscureText: true,
        cursorColor: AppColors.primary,
        decoration: InputDecoration(
          label: _buildLabel(),
          suffixIcon: Icon(
            icon,
            size: 30.0,
          ),
          suffixIconColor: AppColors.primary,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 17.0),
          labelStyle: const TextStyle(color: AppColors.primary),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(29.0),
          ),
        ),
     
    );
  }

  _buildLabel() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20.0,
        ),
      ),
    );
  }
}

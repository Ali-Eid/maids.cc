import 'package:flutter/material.dart';
import 'package:maids_task/presentations/resources/values_manager.dart';

class LogoContainer extends StatelessWidget {
  final String path; // Replace with your logo widget or Image.asset

  const LogoContainer({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizeR.s20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: AppSizeR.s10,
            spreadRadius: AppSizeR.s5,
            offset: const Offset(0.0, 4.0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizeW.s20),
        child: Image.asset(
          path,
        ),
      ),
    );
  }
}

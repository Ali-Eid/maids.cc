import 'package:flutter/material.dart';
import 'package:maids_task/presentations/resources/values_manager.dart';

class LoginField extends StatefulWidget {
  final String labelText;
  final IconData iconData;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const LoginField({
    Key? key,
    required this.labelText,
    required this.iconData,
    required this.controller,
    this.validator,
    this.isPassword = false,
  }) : super(key: key);

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  bool obscureText = false;
  @override
  void initState() {
    obscureText = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: widget.labelText,
        prefixIcon: Icon(widget.iconData),
        suffixIcon: widget.isPassword
            ? obscureText
                ? IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: () => setState(() => obscureText = false),
                  )
                : IconButton(
                    icon: const Icon(Icons.visibility_off),
                    onPressed: () => setState(() => obscureText = true),
                  )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s8),
        ),
      ),
      obscureText: obscureText,
      validator: widget.validator,
    );
  }
}

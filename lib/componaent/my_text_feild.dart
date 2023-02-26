import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {Key? key,
      required this.hint,
      required this.icon,
      this.controller,
      this.validator})
      : super(key: key);

  final String hint;
  final IconData icon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          validator: validator,
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            label: Text(hint),
            focusedBorder:
                const UnderlineInputBorder(borderSide: BorderSide.none),
            enabledBorder:
                const UnderlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}

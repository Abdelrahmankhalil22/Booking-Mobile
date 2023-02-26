import 'package:flutter/material.dart';

import '../../presentation/resources/strings_maneger.dart';
import '../presentation/resources/color_maneger.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {Key? key,
      this.hint,
      required this.label,
      this.prefix,
      this.controller,
      this.validate,
      this.onChanged,
      this.initVal,
      this.textInputType,
      this.readonly, this.suffix})
      : super(key: key);
  final String? hint;
  final String? label;
  final IconData? prefix;
  final IconData? suffix;
  final String? initVal;
  final String? Function(String?)? validate;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final TextInputType? textInputType;
  final bool? readonly;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: TextFormField(
        readOnly: readonly ?? false,
        initialValue: initVal,
        onChanged: onChanged,
        validator: validate,
        controller: controller,
        keyboardType: textInputType,
        style: TextStyle(color: ColorManager.black),
        decoration: InputDecoration(
            labelStyle: TextStyle(
                color: ColorManager.darkGrey,
                fontSize: 18
            ),
            prefixIconColor: Colors.black,
            labelText: label,
            suffixIcon: Icon(suffix),
            hintText: hint,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5))),

      ),
    );
  }
}

import 'package:flutter/material.dart';

class customtextfield extends StatelessWidget {
   customtextfield({
    super.key,  required this.Txt,this.onChanged,this.textInputType
  });
  final String Txt;
  Function(String)? onChanged;
  TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: Txt,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}

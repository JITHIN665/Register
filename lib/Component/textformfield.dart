import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GetTextFormField extends StatelessWidget {
  late TextEditingController controller;
  late String hintName;
  late bool isObscureText;
  TextInputType inputType;
  GetTextFormField(
      {required this.controller,
      required this.hintName,
      this.isObscureText = false,
      this.inputType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        obscureText: isObscureText,
        keyboardType: inputType,
        validator: (val) => val?.length == 0 ? 'Please Enter $hintName' : null,
        onSaved: (val) => controller.text = val!,
        decoration: InputDecoration(
          hintText: hintName,
          hintStyle: TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff482D8A), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff482D8A), width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
    );
  }
}

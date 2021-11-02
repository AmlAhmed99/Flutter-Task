
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  @required String hintText;
  @required IconData suffixIcon;
  @required TextEditingController controller;


  CustomFormField({this.hintText, this.suffixIcon, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextFormField(
        controller: controller,

        decoration: InputDecoration(

          suffixIcon: Icon(suffixIcon),
          hintText: hintText,
         hintStyle: TextStyle(
           color: Colors.black,
         ),
          fillColor:  Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color:  Colors.white,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}

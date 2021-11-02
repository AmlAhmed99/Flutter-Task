
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  @required Function onPress;
  @required Color color;
  @required String text;

  CustomButton({this.onPress, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
        onPressed:onPress,
      height: 50,
      color:color ,
      child: Text(text,style: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),),
    );
  }
}


import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  @required String name;
  @required String phone;


  CustomContainer({this.name, this.phone});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 80,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text('Name:',style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),),
           Text(name,style: TextStyle(
        color: Colors.black,
        fontSize: 17,
         ),
           ),
            ],
          ),
      Row(
        children: [
          Text('Phone:',style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),),
          Text(phone,style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
          ),
            ],
          ),
        ],
      ),
    );
  }
}

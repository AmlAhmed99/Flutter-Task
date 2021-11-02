
import 'file:///E:/flutter/assignment2/lib/Widgets/CustomButton.dart';
import 'file:///E:/flutter/assignment2/lib/Widgets/CustomFormField.dart';
import 'package:assignment2/Widgets/CustomContainer.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatefulWidget{
  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  int counter =0;
 bool visibleContainer1=false;
 bool visibleContainer2=false;
 bool visibleContainer3=false;
 final Namecontroller=TextEditingController();
 final Phonecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contacts Screen',style:TextStyle(
          color: Colors.white,
          fontSize: 25,

        ) ,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            CustomFormField(hintText: 'Enter Your Name Here',suffixIcon: Icons.edit,controller: Namecontroller,),
            SizedBox(height: 30,),
            CustomFormField(hintText: 'Enter Your Phone Number',suffixIcon: Icons.phone,controller:Phonecontroller ,),
            SizedBox(height: 30,),
            Row(
              children: [
                Expanded(child: CustomButton(
                  color: Colors.blue,
                  text: 'Add',
                  onPress: (){
                      if (counter>=0&&counter<3) {
                        counter++;
                        if (counter == 1) {
                          visibleContainer1 = true;
                          print('counter1${counter}');
                        }

                        else if (counter == 2) {
                          visibleContainer2 = true;
                          print('counter2${counter}');
                        }
                        else if (counter == 3) {
                          visibleContainer3 = true;
                          print('counter3${counter}');
                        }
                      }
                      setState(() {
                    });
                  },
                )),
                SizedBox(width: 10,),
                Expanded(child: CustomButton(
                  color: Colors.red,
                  text: 'Delete',
                  onPress: (){
                    if(counter<=3&&counter>0) {
                      if (counter == 3) {
                        visibleContainer3 = false;
                        print('counter3${counter}');
                      }

                      else if (counter == 2) {
                        visibleContainer2 = false;
                        print('counter2${counter}');
                      }
                      else if (counter == 1) {
                        visibleContainer1 = false;
                        print('counter1${counter}');
                      }
                      counter--;
                    }

                    setState(() {
                    });
                  },
                )),
              ],
            ),
            SizedBox(height: 30,),
            Visibility(
              visible:visibleContainer1 ,
                child: CustomContainer(name: Namecontroller.text,phone: Phonecontroller.text,)
            ),
            SizedBox(height: 30,),
            Visibility(
                visible:visibleContainer2 ,
                child: CustomContainer(name:  Namecontroller.text,phone: Phonecontroller.text,)
            ),
            SizedBox(height: 30,),
            Visibility(
                visible:visibleContainer3 ,
                child: CustomContainer(name:  Namecontroller.text,phone: Phonecontroller.text,)
            ),


          ],
        ),
      ),
    );
  }
}

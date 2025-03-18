import 'package:flutter/material.dart';
import 'package:chatapp/globals.dart'as Globals;

class AddtionalUserInfomation extends StatefulWidget{
  const AddtionalUserInfomation({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AdditionalUserInfoState();
  }

}

class _AdditionalUserInfoState extends State<AddtionalUserInfomation>{
  String? validateMobile(String? value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    final regex = RegExp(pattern);

    return value!.isEmpty || !regex.hasMatch(value)
        ? 'Enter a valid mobile number'
        : null;
  }


  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       TextFormField(
         keyboardType: TextInputType.emailAddress,
         decoration: InputDecoration(
           labelText: "Enter Gender",
         ),
         autocorrect: false,
         textCapitalization: TextCapitalization.none,
         validator: (value) {
           if (value == null ||
               value.trim().isEmpty) {
             return "Enter valid Gender";
           }
           return null;
         },
         onSaved: (value) {
           Globals.enteredGender = value!;
         },
       ),
       TextFormField(
         keyboardType: TextInputType.phone,
         decoration: InputDecoration(
           labelText: "Phone Number",
         ),
         validator: validateMobile,
         onSaved: (value) {
           Globals.userNumber = value!;
         },
       ),
       TextFormField(
         keyboardType: TextInputType.phone,
         decoration: InputDecoration(
           labelText: "Relative Phone Number1",
         ),
         validator:validateMobile,
         onSaved: (value) {
           Globals.relativeNumber1 = value!;
         },
       ),
       TextFormField(
         keyboardType: TextInputType.phone,
         decoration: InputDecoration(
           labelText: "Relative Phone Number2",
         ),
         autocorrect: false,
         validator: validateMobile,
         onSaved: (value) {
           Globals.relativeNumber2 = value!;
         },
       ),
     ],
   );
  }

}
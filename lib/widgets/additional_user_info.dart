import 'package:flutter/material.dart';

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

  var _userNumber = '';
  var _relativeNumber1 = '';
  var _relativeNumber2 = '';

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       TextFormField(
         keyboardType: TextInputType.phone,
         decoration: InputDecoration(
           labelText: "Phone Number",
         ),
         validator: validateMobile,
         onSaved: (value) {
           _userNumber = value!;
         },
       ),
       TextFormField(
         keyboardType: TextInputType.phone,
         decoration: InputDecoration(
           labelText: "Relative Phone Number1",
         ),
         validator:validateMobile,
         onSaved: (value) {
           _relativeNumber1 = value!;
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
           _relativeNumber2 = value!;
         },
       ),
     ],
   );
  }

}
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget{
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Location"),
       actions: [
         IconButton(onPressed: (){
           FirebaseAuth.instance.signOut();
         }, icon: Icon(Icons.exit_to_app,color: Theme.of(context).colorScheme.primary,))
       ],
     ),
     body: Center(child: Text("Logged in"),),
   );
  }
  
}
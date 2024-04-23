import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form
        (
          key: formkey ,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if(value==null || value.isEmpty){
                    return 'Empty field...!';
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                validator: (value) {
                  if(value==null || value.isEmpty){
                    return 'Empty field...!';
                  }
                  else if(value.length<6){
                    return 'Must contain 6 numbers';
                  }
                  else if(!RegExp(r'(?=.*[A-Za-z])(?=.*\d)').hasMatch(value)){
                    return 'Invalid formate';
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(onPressed: (){
                if(formkey.currentState!.validate()){
                 print('Success');
                }
                
              }, child: Text('Save'))
            ],
          ),
        ),
      ),
    );
  }
}
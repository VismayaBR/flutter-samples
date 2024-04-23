import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Radiobutton extends StatefulWidget {
  const Radiobutton({super.key});

  @override
  State<Radiobutton> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  String selected='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            child: RadioListTile(
              title: Text('Option 1'),
              value: 'Option 1',
              groupValue: selected,
              onChanged: (value) {
                setState(() {
                  selected = value!;
                });
              },
            ),
          ),
          Container(
            width: 250,
            child: RadioListTile(
              title: Text('Option 2'),
              value: 'Option 2',
              groupValue: selected,
              onChanged: (value) {
                setState(() {
                  selected = value!;
                });
              },
            ),
          ),
         
          // SizedBox(height: 16),
          // Text('Selected Option: $selected', style: TextStyle(fontSize: 18)),
          // ElevatedButton(onPressed: (){
          //   Fluttertoast.showToast(msg: 'Button clicked');
          // }, child: Text('Save'))
        ],
            ),
      )
    );
  }
}
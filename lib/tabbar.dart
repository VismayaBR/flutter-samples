import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AlertBox extends StatefulWidget {
  const AlertBox({Key? key}) : super(key: key);
 
  @override
  // ignore: library_private_types_in_public_api
  _AlertBoxState createState() => _AlertBoxState();
}
 
class _AlertBoxState extends State<AlertBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter"),
        backgroundColor: Colors.pink,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Alert Dialog Box"),
                  content: const Text("You have raised a Alert Dialog Box"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Fluttertoast.showToast(msg: 'deleted successfully...');
                        Navigator.of(context).pop();
                      },
                      
                        child: const Text("okay"),
                     
                    ),
                     TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      
                        child: const Text("cancel"),
                     
                    ),
                  ],
                ),
              );
            },
            child: const Text("Show alert Dialog box"),
          ),

        ),
      ),
    );
  }
}
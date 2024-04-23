import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.separated(
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          child: ListTile(
            onTap: () {
              print('object');
            },
            leading: CircleAvatar(backgroundColor: Colors.amber),
            title: Text('user'),
            subtitle: Text('message'),
            trailing: Text('12/11/2023'),
          ),
        );
      },
      // scrollDirection: Axis.horizontal,
    ));
  }
}

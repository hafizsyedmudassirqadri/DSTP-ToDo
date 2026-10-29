import 'package:flutter/material.dart';

class ExampleUi extends StatelessWidget {
  const ExampleUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),

      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            

            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Good After Noon'),
              Text("Good Evening"),
              Text("Good Night"),
            ],
          ),
        ),
      ),
    );
  }
}